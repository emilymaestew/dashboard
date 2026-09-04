-- Run this once in the Supabase SQL editor.
-- Creates the table that holds your board, and locks it down so a person
-- can only ever read or write their own row.

create table if not exists public.boards (
  user_id    uuid primary key references auth.users(id) on delete cascade,
  state      jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);

alter table public.boards enable row level security;

drop policy if exists "read own board"   on public.boards;
drop policy if exists "insert own board" on public.boards;
drop policy if exists "update own board" on public.boards;

create policy "read own board" on public.boards
  for select using (auth.uid() = user_id);

create policy "insert own board" on public.boards
  for insert with check (auth.uid() = user_id);

create policy "update own board" on public.boards
  for update using (auth.uid() = user_id) with check (auth.uid() = user_id);
