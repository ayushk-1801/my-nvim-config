#include <bits/stdc++.h>
#include <ext/pb_ds/assoc_container.hpp>
#include <ext/pb_ds/tree_policy.hpp>

using namespace std;
using namespace __gnu_pbds;

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

#ifndef ONLINE_JUDGE
#define debug(...) cerr << "[" << #__VA_ARGS__ << "]: ", debugOut(__VA_ARGS__)
#else
#define debug(...) 42
#endif

typedef long long ll;
typedef tree<pair<ll, ll>, null_type, less<pair<ll, ll>>, rb_tree_tag, tree_order_statistics_node_update > pbds; // find_by_order, order_of_key

void debugOut() {cerr << nline;}
string toString(const string& s) {return '"' + s + '"';}
string toString(const char* s) {return toString(string(s));}

template <typename T> string to_string(const T& v);
template <typename A, typename B> string to_string(const pair<A, B>& p) {return "( " + toString(p.first) + ", " + toString(p.second) + " )";}
template <typename T> string to_string(const T& v) {ostringstream oss; oss << "{"; bool first = true; for (const auto& x : v) {if (!first) {oss << ", ";} first = false; oss << toString(x);} oss << "}"; return oss.str();}
template <typename Head, typename... Tail> void debugOut(Head H, Tail... T) {ostringstream oss; oss << toString(H); (oss << ... << (", " + toString(T))); cerr << oss.str() << nline;}
 
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
