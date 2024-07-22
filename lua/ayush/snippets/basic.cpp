#include <bits/stdc++.h>
using namespace std;

#define fastio() ios_base::sync_with_stdio(false);cin.tie(NULL);cout.tie(NULL)
#define MOD 1000000007
#define INF 1e18
#define nline "\n"
#define pb push_back
#define ppb pop_back
#define mp make_pair
#define sz(x) ((int)(x).size())
#define all(x) (x).begin(), (x).end()
#define rall(x) (x).rbegin(), (x).rend()

typedef long long ll;

void debug_out() { cerr << endl; }
string to_string(string s) {return '"' + s + '"';}
string to_string(const char* s) {return to_string((string) s);}

template <typename T, typename V> string to_string(pair<T, V> p) {return "(" + to_string(p.first) + ", " + to_string(p.second) + ")";}
template <typename T> string to_string(T v) {bool first = true; string res = "{"; for (const auto &x : v) {if (!first) {res += ", ";} first = false; res += to_string(x);} res += "}"; return res;}
template <typename Head, typename... Tail> void debug_out(Head H, Tail... T) {cerr << " " << to_string(H);debug_out(T...);}
 
#ifndef ONLINE_JUDGE
#define debug(...) cerr << "[" << #__VA_ARGS__ << "]:", debug_out(__VA_ARGS__)
#else
#define debug(...) 42
#endif

struct custom_hash {static uint64_t splitmix64(uint64_t x) {x += 0x9e3779b97f4a7c15; x = (x ^ (x >> 30)) * 0xbf58476d1ce4e5b9; x = (x ^ (x >> 27)) * 0x94d049bb133111eb; return x ^ (x >> 31);} size_t operator()(uint64_t x) const { static const uint64_t FIXED_RANDOM = chrono::steady_clock::now().time_since_epoch().count(); return splitmix64(x + FIXED_RANDOM);}};
/*--------------------------------------------------------------------------------------------------------------------------*/

void solve() {

}

int main() {
    fastio();
    int TC = 1;
    cin >> TC;
    while(TC--)
        solve();
}
