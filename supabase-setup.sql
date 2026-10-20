create table if not exists public.portal_state (
  id text primary key check (id = 'main'),
  data jsonb not null,
  updated_at timestamptz not null default now()
);

alter table public.portal_state enable row level security;
revoke all on table public.portal_state from anon, authenticated;
grant all on table public.portal_state to service_role;
