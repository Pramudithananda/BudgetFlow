.class public Lexpo/modules/filesystem/FileSystemModule;
.super Lexpo/modules/kotlin/modules/Module;
.source "FileSystemModule.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/filesystem/FileSystemModule$DownloadResumableTaskParams;,
        Lexpo/modules/filesystem/FileSystemModule$DownloadTaskHandler;,
        Lexpo/modules/filesystem/FileSystemModule$ProgressListener;,
        Lexpo/modules/filesystem/FileSystemModule$ProgressResponseBody;,
        Lexpo/modules/filesystem/FileSystemModule$TaskHandler;,
        Lexpo/modules/filesystem/FileSystemModule$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFileSystemModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileSystemModule.kt\nexpo/modules/filesystem/FileSystemModule\n+ 2 Module.kt\nexpo/modules/kotlin/modules/ModuleKt\n+ 3 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 4 Trace.kt\nandroidx/tracing/TraceKt\n+ 5 ModuleDefinitionBuilder.kt\nexpo/modules/kotlin/modules/ModuleDefinitionBuilder\n+ 6 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder\n+ 7 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeKt\n+ 8 AnyType.kt\nexpo/modules/kotlin/types/AnyTypeProvider\n+ 9 AsyncFunctionComponent.kt\nexpo/modules/kotlin/functions/AsyncFunctionComponentKt\n+ 10 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 11 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n+ 12 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 13 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 14 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 15 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1118:1\n58#2:1119\n14#3:1120\n25#3:1121\n27#4,3:1122\n31#4:2297\n105#5,2:1125\n161#5,3:2292\n119#5,2:2295\n252#6:1127\n255#6,3:1182\n252#6:1185\n255#6,3:1241\n277#6:1244\n280#6,3:1310\n252#6:1313\n255#6,3:1369\n236#6,8:1372\n244#6,2:1434\n236#6,8:1436\n244#6,2:1498\n252#6:1500\n255#6,3:1556\n236#6,8:1559\n244#6,2:1621\n226#6:1623\n227#6,2:1654\n226#6:1656\n227#6,2:1687\n236#6,8:1689\n244#6,2:1751\n236#6,8:1753\n244#6,2:1815\n252#6:1817\n255#6,3:1873\n277#6:1876\n280#6,3:1942\n265#6:1945\n268#6,3:1971\n315#6:1974\n318#6,3:2011\n340#6:2014\n343#6,3:2061\n315#6:2064\n318#6,3:2101\n236#6,8:2104\n244#6,2:2166\n365#6:2168\n368#6,3:2225\n236#6,8:2228\n244#6,2:2290\n170#7,6:1128\n157#7:1134\n148#7,7:1137\n176#7:1144\n157#7:1145\n148#7,7:1146\n170#7,6:1186\n157#7:1192\n148#7,7:1195\n176#7:1202\n157#7:1203\n148#7,7:1204\n174#7:1211\n181#7,7:1245\n157#7:1252\n148#7,7:1255\n188#7:1262\n157#7:1263\n148#7,7:1264\n189#7:1271\n157#7:1272\n148#7,7:1273\n186#7:1280\n170#7,6:1314\n157#7:1320\n148#7,7:1323\n176#7:1330\n157#7:1331\n148#7,7:1332\n174#7:1339\n161#7,5:1380\n157#7:1385\n148#7,17:1388\n161#7,5:1444\n157#7:1449\n148#7,17:1452\n170#7,6:1501\n157#7:1507\n148#7,7:1510\n176#7:1517\n157#7:1518\n148#7,7:1519\n174#7:1526\n161#7,5:1567\n157#7:1572\n148#7,17:1575\n161#7,5:1697\n157#7:1702\n148#7,17:1705\n161#7,5:1761\n157#7:1766\n148#7,17:1769\n170#7,6:1818\n157#7:1824\n148#7,7:1827\n176#7:1834\n157#7:1835\n148#7,7:1836\n174#7:1843\n181#7,7:1877\n157#7:1884\n148#7,7:1887\n188#7:1894\n157#7:1895\n148#7,7:1896\n189#7:1903\n157#7:1904\n148#7,7:1905\n186#7:1912\n161#7,5:1946\n157#7:1951\n148#7,17:1954\n181#7,7:1975\n157#7:1982\n148#7,7:1985\n188#7:1992\n157#7:1993\n148#7,7:1994\n189#7:2001\n157#7:2002\n148#7,7:2003\n186#7:2010\n194#7,8:2015\n157#7:2023\n148#7,7:2026\n202#7:2033\n157#7:2034\n148#7,7:2035\n203#7:2042\n157#7:2043\n148#7,7:2044\n204#7:2051\n157#7:2052\n148#7,7:2053\n200#7:2060\n181#7,7:2065\n157#7:2072\n148#7,7:2075\n188#7:2082\n157#7:2083\n148#7,7:2084\n189#7:2091\n157#7:2092\n148#7,7:2093\n186#7:2100\n161#7,5:2112\n157#7:2117\n148#7,17:2120\n209#7,9:2169\n157#7:2178\n148#7,7:2181\n218#7:2188\n157#7:2189\n148#7,7:2190\n219#7:2197\n157#7:2198\n148#7,7:2199\n220#7:2206\n157#7:2207\n148#7,7:2208\n221#7:2215\n157#7:2216\n148#7,7:2217\n216#7:2224\n161#7,5:2236\n157#7:2241\n148#7,17:2244\n143#8,2:1135\n143#8,2:1193\n143#8,2:1253\n143#8,2:1321\n143#8,2:1386\n143#8,2:1450\n143#8,2:1508\n143#8,2:1573\n143#8,2:1703\n143#8,2:1767\n143#8,2:1825\n143#8,2:1885\n143#8,2:1952\n143#8,2:1983\n143#8,2:2024\n143#8,2:2073\n143#8,2:2118\n143#8,2:2179\n143#8,2:2242\n13#9,6:1153\n19#9,19:1163\n13#9,6:1212\n19#9,19:1222\n13#9,6:1281\n19#9,19:1291\n13#9,6:1340\n19#9,19:1350\n13#9,6:1405\n19#9,19:1415\n13#9,6:1469\n19#9,19:1479\n13#9,6:1527\n19#9,19:1537\n13#9,6:1592\n19#9,19:1602\n13#9,6:1625\n19#9,19:1635\n13#9,6:1658\n19#9,19:1668\n13#9,6:1722\n19#9,19:1732\n13#9,6:1786\n19#9,19:1796\n13#9,6:1844\n19#9,19:1854\n13#9,6:1913\n19#9,19:1923\n13#9,6:2137\n19#9,19:2147\n13#9,6:2261\n19#9,19:2271\n8#10,4:1159\n8#10,4:1218\n8#10,4:1287\n8#10,4:1346\n8#10,4:1411\n8#10,4:1475\n8#10,4:1533\n8#10,4:1598\n8#10,4:1631\n8#10,4:1664\n8#10,4:1728\n8#10,4:1792\n8#10,4:1850\n8#10,4:1919\n8#10,4:2143\n8#10,4:2267\n26#11:1624\n26#11:1657\n1#12:2298\n215#13,2:2299\n215#13,2:2301\n11065#14:2303\n11400#14,3:2304\n2730#15,7:2307\n*S KotlinDebug\n*F\n+ 1 FileSystemModule.kt\nexpo/modules/filesystem/FileSystemModule\n*L\n89#1:1119\n89#1:1120\n89#1:1121\n89#1:1122,3\n89#1:2297\n103#1:1125,2\n698#1:2292,3\n720#1:2295,2\n112#1:1127\n112#1:1182,3\n172#1:1185\n172#1:1241,3\n203#1:1244\n203#1:1310,3\n217#1:1313\n217#1:1369,3\n256#1:1372,8\n256#1:1434,2\n283#1:1436,8\n283#1:1498,2\n334#1:1500\n334#1:1556,3\n352#1:1559,8\n352#1:1621,2\n369#1:1623\n369#1:1654,2\n378#1:1656\n378#1:1687,2\n387#1:1689,8\n387#1:1751,2\n401#1:1753,8\n401#1:1815,2\n417#1:1817\n417#1:1873,3\n436#1:1876\n436#1:1942,3\n453#1:1945\n453#1:1971,3\n468#1:1974\n468#1:2011,3\n497#1:2014\n497#1:2061,3\n549#1:2064\n549#1:2101,3\n611#1:2104,8\n611#1:2166,2\n616#1:2168\n616#1:2225,3\n681#1:2228,8\n681#1:2290,2\n112#1:1128,6\n112#1:1134\n112#1:1137,7\n112#1:1144\n112#1:1145\n112#1:1146,7\n172#1:1186,6\n172#1:1192\n172#1:1195,7\n172#1:1202\n172#1:1203\n172#1:1204,7\n172#1:1211\n203#1:1245,7\n203#1:1252\n203#1:1255,7\n203#1:1262\n203#1:1263\n203#1:1264,7\n203#1:1271\n203#1:1272\n203#1:1273,7\n203#1:1280\n217#1:1314,6\n217#1:1320\n217#1:1323,7\n217#1:1330\n217#1:1331\n217#1:1332,7\n217#1:1339\n256#1:1380,5\n256#1:1385\n256#1:1388,17\n283#1:1444,5\n283#1:1449\n283#1:1452,17\n334#1:1501,6\n334#1:1507\n334#1:1510,7\n334#1:1517\n334#1:1518\n334#1:1519,7\n334#1:1526\n352#1:1567,5\n352#1:1572\n352#1:1575,17\n387#1:1697,5\n387#1:1702\n387#1:1705,17\n401#1:1761,5\n401#1:1766\n401#1:1769,17\n417#1:1818,6\n417#1:1824\n417#1:1827,7\n417#1:1834\n417#1:1835\n417#1:1836,7\n417#1:1843\n436#1:1877,7\n436#1:1884\n436#1:1887,7\n436#1:1894\n436#1:1895\n436#1:1896,7\n436#1:1903\n436#1:1904\n436#1:1905,7\n436#1:1912\n453#1:1946,5\n453#1:1951\n453#1:1954,17\n468#1:1975,7\n468#1:1982\n468#1:1985,7\n468#1:1992\n468#1:1993\n468#1:1994,7\n468#1:2001\n468#1:2002\n468#1:2003,7\n468#1:2010\n497#1:2015,8\n497#1:2023\n497#1:2026,7\n497#1:2033\n497#1:2034\n497#1:2035,7\n497#1:2042\n497#1:2043\n497#1:2044,7\n497#1:2051\n497#1:2052\n497#1:2053,7\n497#1:2060\n549#1:2065,7\n549#1:2072\n549#1:2075,7\n549#1:2082\n549#1:2083\n549#1:2084,7\n549#1:2091\n549#1:2092\n549#1:2093,7\n549#1:2100\n611#1:2112,5\n611#1:2117\n611#1:2120,17\n616#1:2169,9\n616#1:2178\n616#1:2181,7\n616#1:2188\n616#1:2189\n616#1:2190,7\n616#1:2197\n616#1:2198\n616#1:2199,7\n616#1:2206\n616#1:2207\n616#1:2208,7\n616#1:2215\n616#1:2216\n616#1:2217,7\n616#1:2224\n681#1:2236,5\n681#1:2241\n681#1:2244,17\n112#1:1135,2\n172#1:1193,2\n203#1:1253,2\n217#1:1321,2\n256#1:1386,2\n283#1:1450,2\n334#1:1508,2\n352#1:1573,2\n387#1:1703,2\n401#1:1767,2\n417#1:1825,2\n436#1:1885,2\n453#1:1952,2\n468#1:1983,2\n497#1:2024,2\n549#1:2073,2\n611#1:2118,2\n616#1:2179,2\n681#1:2242,2\n112#1:1153,6\n112#1:1163,19\n172#1:1212,6\n172#1:1222,19\n203#1:1281,6\n203#1:1291,19\n217#1:1340,6\n217#1:1350,19\n256#1:1405,6\n256#1:1415,19\n283#1:1469,6\n283#1:1479,19\n334#1:1527,6\n334#1:1537,19\n352#1:1592,6\n352#1:1602,19\n369#1:1625,6\n369#1:1635,19\n378#1:1658,6\n378#1:1668,19\n387#1:1722,6\n387#1:1732,19\n401#1:1786,6\n401#1:1796,19\n417#1:1844,6\n417#1:1854,19\n436#1:1913,6\n436#1:1923,19\n611#1:2137,6\n611#1:2147,19\n681#1:2261,6\n681#1:2271,19\n112#1:1159,4\n172#1:1218,4\n203#1:1287,4\n217#1:1346,4\n256#1:1411,4\n283#1:1475,4\n334#1:1533,4\n352#1:1598,4\n369#1:1631,4\n378#1:1664,4\n387#1:1728,4\n401#1:1792,4\n417#1:1850,4\n436#1:1919,4\n611#1:2143,4\n681#1:2267,4\n369#1:1624\n378#1:1657\n876#1:2299,2\n893#1:2301,2\n1039#1:2303\n1039#1:2304,3\n1039#1:2307,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00be\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0016\u0018\u00002\u00020\u0001:\u0005VWXYZB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0018\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J \u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J(\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u00122\u0006\u0010$\u001a\u00020\u00122\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0002J\u0008\u0010%\u001a\u00020&H\u0017J\u0018\u0010\'\u001a\u0004\u0018\u00010(2\u0006\u0010)\u001a\u00020*H\u0082@\u00a2\u0006\u0002\u0010+J\u0010\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020\u001aH\u0002J\u0018\u0010/\u001a\u00020-2\u0006\u00100\u001a\u00020\u00162\u0006\u00101\u001a\u000202H\u0002J \u0010/\u001a\u00020-2\u0006\u00100\u001a\u00020\u00162\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u00020\u0012H\u0002J\u0010\u00104\u001a\u00020-2\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u0010\u00105\u001a\u0002062\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u0010\u00107\u001a\u0002082\u0006\u00100\u001a\u00020\u0016H\u0002J\u0010\u00109\u001a\u00020:2\u0006\u0010;\u001a\u000208H\u0002J\u0012\u0010<\u001a\u0004\u0018\u00010=2\u0006\u00100\u001a\u00020\u0016H\u0002J\u0010\u0010>\u001a\u00020?2\u0006\u00100\u001a\u00020\u0016H\u0002J\u0010\u0010@\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u0010\u0010A\u001a\u0002082\u0006\u00100\u001a\u00020\u0016H\u0002J\u0012\u0010B\u001a\u0002082\u0008\u0010C\u001a\u0004\u0018\u00010\u0012H\u0003J\u0010\u0010D\u001a\u00020\u00122\u0006\u0010E\u001a\u00020\u0012H\u0002J\u001a\u0010F\u001a\n\u0012\u0004\u0012\u000202\u0018\u00010G2\u0008\u0010H\u001a\u0004\u0018\u00010\u0012H\u0002J\u0016\u0010I\u001a\u0008\u0012\u0004\u0012\u0002020G2\u0006\u00100\u001a\u00020\u0016H\u0002J\u0018\u0010J\u001a\n\u0012\u0004\u0012\u000202\u0018\u00010G2\u0006\u00100\u001a\u00020\u0016H\u0002J \u0010K\u001a\u00020-2\u0006\u0010L\u001a\u00020=2\u0006\u0010M\u001a\u00020\u001a2\u0006\u0010N\u001a\u00020\u0015H\u0002J\u0010\u0010O\u001a\u00020P2\u0006\u0010Q\u001a\u00020RH\u0002J\u000c\u0010S\u001a\u00020-*\u00020\u0016H\u0002J\u000c\u0010T\u001a\u00020-*\u00020\u0016H\u0002J\u000c\u0010U\u001a\u00020\u001a*\u00020\u0016H\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u00068BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\u0004\u0018\u00010\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0014\u001a\u00020\u0015*\u00020\u00168BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0017\u00a8\u0006["
    }
    d2 = {
        "Lexpo/modules/filesystem/FileSystemModule;",
        "Lexpo/modules/kotlin/modules/Module;",
        "()V",
        "client",
        "Lokhttp3/OkHttpClient;",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "dirPermissionsRequest",
        "Lexpo/modules/kotlin/Promise;",
        "moduleCoroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "okHttpClient",
        "getOkHttpClient",
        "()Lokhttp3/OkHttpClient;",
        "taskHandlers",
        "",
        "",
        "Lexpo/modules/filesystem/FileSystemModule$TaskHandler;",
        "isSAFUri",
        "",
        "Landroid/net/Uri;",
        "(Landroid/net/Uri;)Z",
        "contentUriFromFile",
        "file",
        "Ljava/io/File;",
        "createRequestBody",
        "Lokhttp3/RequestBody;",
        "options",
        "Lexpo/modules/filesystem/FileSystemUploadOptions;",
        "decorator",
        "Lexpo/modules/filesystem/RequestBodyDecorator;",
        "createUploadRequest",
        "Lokhttp3/Request;",
        "url",
        "fileUriString",
        "definition",
        "Lexpo/modules/kotlin/modules/ModuleDefinitionData;",
        "downloadResumableTask",
        "",
        "params",
        "Lexpo/modules/filesystem/FileSystemModule$DownloadResumableTaskParams;",
        "(Lexpo/modules/filesystem/FileSystemModule$DownloadResumableTaskParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "ensureDirExists",
        "",
        "dir",
        "ensurePermission",
        "uri",
        "permission",
        "Lexpo/modules/interfaces/filesystem/Permission;",
        "errorMsg",
        "forceDelete",
        "getFileSize",
        "",
        "getInputStream",
        "Ljava/io/InputStream;",
        "getInputStreamBytes",
        "",
        "inputStream",
        "getNearestSAFFile",
        "Landroidx/documentfile/provider/DocumentFile;",
        "getOutputStream",
        "Ljava/io/OutputStream;",
        "md5",
        "openAssetInputStream",
        "openResourceInputStream",
        "resourceName",
        "parseFileUri",
        "uriStr",
        "permissionsForPath",
        "Ljava/util/EnumSet;",
        "path",
        "permissionsForSAFUri",
        "permissionsForUri",
        "transformFilesFromSAF",
        "documentFile",
        "outputDir",
        "copy",
        "translateHeaders",
        "Landroid/os/Bundle;",
        "headers",
        "Lokhttp3/Headers;",
        "checkIfFileDirExists",
        "checkIfFileExists",
        "toFile",
        "DownloadResumableTaskParams",
        "DownloadTaskHandler",
        "ProgressListener",
        "ProgressResponseBody",
        "TaskHandler",
        "expo-file-system_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private client:Lokhttp3/OkHttpClient;

.field private dirPermissionsRequest:Lexpo/modules/kotlin/Promise;

.field private final moduleCoroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field private final taskHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lexpo/modules/filesystem/FileSystemModule$TaskHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Lexpo/modules/kotlin/modules/Module;-><init>()V

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lexpo/modules/filesystem/FileSystemModule;->taskHandlers:Ljava/util/Map;

    .line 86
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/filesystem/FileSystemModule;->moduleCoroutineScope:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method

.method public static final synthetic access$checkIfFileDirExists(Lexpo/modules/filesystem/FileSystemModule;Landroid/net/Uri;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/FileSystemModule;->checkIfFileDirExists(Landroid/net/Uri;)V

    return-void
.end method

.method public static final synthetic access$contentUriFromFile(Lexpo/modules/filesystem/FileSystemModule;Ljava/io/File;)Landroid/net/Uri;
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/FileSystemModule;->contentUriFromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createUploadRequest(Lexpo/modules/filesystem/FileSystemModule;Ljava/lang/String;Ljava/lang/String;Lexpo/modules/filesystem/FileSystemUploadOptions;Lexpo/modules/filesystem/RequestBodyDecorator;)Lokhttp3/Request;
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Lexpo/modules/filesystem/FileSystemModule;->createUploadRequest(Ljava/lang/String;Ljava/lang/String;Lexpo/modules/filesystem/FileSystemUploadOptions;Lexpo/modules/filesystem/RequestBodyDecorator;)Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$downloadResumableTask(Lexpo/modules/filesystem/FileSystemModule;Lexpo/modules/filesystem/FileSystemModule$DownloadResumableTaskParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2}, Lexpo/modules/filesystem/FileSystemModule;->downloadResumableTask(Lexpo/modules/filesystem/FileSystemModule$DownloadResumableTaskParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$ensureDirExists(Lexpo/modules/filesystem/FileSystemModule;Ljava/io/File;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/FileSystemModule;->ensureDirExists(Ljava/io/File;)V

    return-void
.end method

.method public static final synthetic access$ensurePermission(Lexpo/modules/filesystem/FileSystemModule;Landroid/net/Uri;Lexpo/modules/interfaces/filesystem/Permission;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2}, Lexpo/modules/filesystem/FileSystemModule;->ensurePermission(Landroid/net/Uri;Lexpo/modules/interfaces/filesystem/Permission;)V

    return-void
.end method

.method public static final synthetic access$ensurePermission(Lexpo/modules/filesystem/FileSystemModule;Landroid/net/Uri;Lexpo/modules/interfaces/filesystem/Permission;Ljava/lang/String;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lexpo/modules/filesystem/FileSystemModule;->ensurePermission(Landroid/net/Uri;Lexpo/modules/interfaces/filesystem/Permission;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$forceDelete(Lexpo/modules/filesystem/FileSystemModule;Ljava/io/File;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/FileSystemModule;->forceDelete(Ljava/io/File;)V

    return-void
.end method

.method public static final synthetic access$getContext(Lexpo/modules/filesystem/FileSystemModule;)Landroid/content/Context;
    .locals 0

    .line 80
    invoke-direct {p0}, Lexpo/modules/filesystem/FileSystemModule;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDirPermissionsRequest$p(Lexpo/modules/filesystem/FileSystemModule;)Lexpo/modules/kotlin/Promise;
    .locals 0

    .line 80
    iget-object p0, p0, Lexpo/modules/filesystem/FileSystemModule;->dirPermissionsRequest:Lexpo/modules/kotlin/Promise;

    return-object p0
.end method

.method public static final synthetic access$getFileSize(Lexpo/modules/filesystem/FileSystemModule;Ljava/io/File;)J
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/FileSystemModule;->getFileSize(Ljava/io/File;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$getInputStream(Lexpo/modules/filesystem/FileSystemModule;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/FileSystemModule;->getInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getInputStreamBytes(Lexpo/modules/filesystem/FileSystemModule;Ljava/io/InputStream;)[B
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/FileSystemModule;->getInputStreamBytes(Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getModuleCoroutineScope$p(Lexpo/modules/filesystem/FileSystemModule;)Lkotlinx/coroutines/CoroutineScope;
    .locals 0

    .line 80
    iget-object p0, p0, Lexpo/modules/filesystem/FileSystemModule;->moduleCoroutineScope:Lkotlinx/coroutines/CoroutineScope;

    return-object p0
.end method

.method public static final synthetic access$getNearestSAFFile(Lexpo/modules/filesystem/FileSystemModule;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/FileSystemModule;->getNearestSAFFile(Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getOkHttpClient(Lexpo/modules/filesystem/FileSystemModule;)Lokhttp3/OkHttpClient;
    .locals 0

    .line 80
    invoke-direct {p0}, Lexpo/modules/filesystem/FileSystemModule;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getOutputStream(Lexpo/modules/filesystem/FileSystemModule;Landroid/net/Uri;)Ljava/io/OutputStream;
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/FileSystemModule;->getOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTaskHandlers$p(Lexpo/modules/filesystem/FileSystemModule;)Ljava/util/Map;
    .locals 0

    .line 80
    iget-object p0, p0, Lexpo/modules/filesystem/FileSystemModule;->taskHandlers:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$isSAFUri(Lexpo/modules/filesystem/FileSystemModule;Landroid/net/Uri;)Z
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/FileSystemModule;->isSAFUri(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$md5(Lexpo/modules/filesystem/FileSystemModule;Ljava/io/File;)Ljava/lang/String;
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/FileSystemModule;->md5(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$openAssetInputStream(Lexpo/modules/filesystem/FileSystemModule;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/FileSystemModule;->openAssetInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$openResourceInputStream(Lexpo/modules/filesystem/FileSystemModule;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/FileSystemModule;->openResourceInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$parseFileUri(Lexpo/modules/filesystem/FileSystemModule;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/FileSystemModule;->parseFileUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setDirPermissionsRequest$p(Lexpo/modules/filesystem/FileSystemModule;Lexpo/modules/kotlin/Promise;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lexpo/modules/filesystem/FileSystemModule;->dirPermissionsRequest:Lexpo/modules/kotlin/Promise;

    return-void
.end method

.method public static final synthetic access$toFile(Lexpo/modules/filesystem/FileSystemModule;Landroid/net/Uri;)Ljava/io/File;
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/FileSystemModule;->toFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$transformFilesFromSAF(Lexpo/modules/filesystem/FileSystemModule;Landroidx/documentfile/provider/DocumentFile;Ljava/io/File;Z)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lexpo/modules/filesystem/FileSystemModule;->transformFilesFromSAF(Landroidx/documentfile/provider/DocumentFile;Ljava/io/File;Z)V

    return-void
.end method

.method public static final synthetic access$translateHeaders(Lexpo/modules/filesystem/FileSystemModule;Lokhttp3/Headers;)Landroid/os/Bundle;
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/FileSystemModule;->translateHeaders(Lokhttp3/Headers;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private final checkIfFileDirExists(Landroid/net/Uri;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 739
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/FileSystemModule;->toFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    .line 740
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 741
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 742
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Directory for \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' doesn\'t exist. Please make sure directory \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\' exists before calling downloadAsync."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final checkIfFileExists(Landroid/net/Uri;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 731
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/FileSystemModule;->toFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    .line 732
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 733
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Directory for \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\' doesn\'t exist."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final contentUriFromFile(Ljava/io/File;)Landroid/net/Uri;
    .locals 3

    .line 862
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getThrowingActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 863
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v1

    invoke-virtual {v1}, Lexpo/modules/kotlin/AppContext;->getThrowingActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".FileSystemFileProvider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 861
    invoke-static {v0, v1, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "getUriForFile(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final createRequestBody(Lexpo/modules/filesystem/FileSystemUploadOptions;Lexpo/modules/filesystem/RequestBodyDecorator;Ljava/io/File;)Lokhttp3/RequestBody;
    .locals 5

    .line 884
    invoke-virtual {p1}, Lexpo/modules/filesystem/FileSystemUploadOptions;->getUploadType()Lexpo/modules/filesystem/FileSystemUploadType;

    move-result-object v0

    sget-object v1, Lexpo/modules/filesystem/FileSystemModule$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lexpo/modules/filesystem/FileSystemUploadType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 890
    new-instance v0, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v0, v2, v1, v2}, Lokhttp3/MultipartBody$Builder;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v1, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v0, v1}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    .line 891
    invoke-virtual {p1}, Lexpo/modules/filesystem/FileSystemUploadOptions;->getParameters()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2301
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 893
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    goto :goto_0

    .line 895
    :cond_0
    invoke-virtual {p1}, Lexpo/modules/filesystem/FileSystemUploadOptions;->getMimeType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "guessContentTypeFromName(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 897
    :cond_1
    invoke-virtual {p1}, Lexpo/modules/filesystem/FileSystemUploadOptions;->getFieldName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    .line 898
    :cond_2
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    sget-object v4, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    invoke-virtual {v4, v1}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-virtual {v3, p3, v1}, Lokhttp3/RequestBody$Companion;->create(Ljava/io/File;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p3

    invoke-interface {p2, p3}, Lexpo/modules/filesystem/RequestBodyDecorator;->decorate(Lokhttp3/RequestBody;)Lokhttp3/RequestBody;

    move-result-object p2

    invoke-virtual {v0, p1, v2, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 899
    invoke-virtual {v0}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object p1

    check-cast p1, Lokhttp3/RequestBody;

    goto :goto_1

    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 886
    :cond_4
    sget-object p1, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    invoke-virtual {p1, p3, v2}, Lokhttp3/RequestBody$Companion;->create(Ljava/io/File;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-interface {p2, p1}, Lexpo/modules/filesystem/RequestBodyDecorator;->decorate(Lokhttp3/RequestBody;)Lokhttp3/RequestBody;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private final createUploadRequest(Ljava/lang/String;Ljava/lang/String;Lexpo/modules/filesystem/FileSystemUploadOptions;Lexpo/modules/filesystem/RequestBodyDecorator;)Lokhttp3/Request;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 870
    invoke-static {p2}, Lexpo/modules/filesystem/FileSystemModuleKt;->access$slashifyFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 871
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v0, Lexpo/modules/interfaces/filesystem/Permission;->READ:Lexpo/modules/interfaces/filesystem/Permission;

    invoke-direct {p0, p2, v0}, Lexpo/modules/filesystem/FileSystemModule;->ensurePermission(Landroid/net/Uri;Lexpo/modules/interfaces/filesystem/Permission;)V

    .line 872
    invoke-direct {p0, p2}, Lexpo/modules/filesystem/FileSystemModule;->checkIfFileExists(Landroid/net/Uri;)V

    .line 874
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 875
    invoke-virtual {p3}, Lexpo/modules/filesystem/FileSystemUploadOptions;->getHeaders()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2299
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 876
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    .line 879
    :cond_0
    invoke-direct {p0, p2}, Lexpo/modules/filesystem/FileSystemModule;->toFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p2

    invoke-direct {p0, p3, p4, p2}, Lexpo/modules/filesystem/FileSystemModule;->createRequestBody(Lexpo/modules/filesystem/FileSystemUploadOptions;Lexpo/modules/filesystem/RequestBodyDecorator;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object p2

    .line 880
    invoke-virtual {p3}, Lexpo/modules/filesystem/FileSystemUploadOptions;->getHttpMethod()Lexpo/modules/filesystem/HttpMethod;

    move-result-object p3

    invoke-virtual {p3}, Lexpo/modules/filesystem/HttpMethod;->getValue()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method

.method private final downloadResumableTask(Lexpo/modules/filesystem/FileSystemModule$DownloadResumableTaskParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 912
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lexpo/modules/filesystem/FileSystemModule$downloadResumableTask$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lexpo/modules/filesystem/FileSystemModule$downloadResumableTask$2;-><init>(Lexpo/modules/filesystem/FileSystemModule$DownloadResumableTaskParams;Lexpo/modules/filesystem/FileSystemModule;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final ensureDirExists(Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 748
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 749
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Couldn\'t create directory \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private final ensurePermission(Landroid/net/Uri;Lexpo/modules/interfaces/filesystem/Permission;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 791
    sget-object v0, Lexpo/modules/interfaces/filesystem/Permission;->READ:Lexpo/modules/interfaces/filesystem/Permission;

    const-string v1, "Location \'"

    if-ne p2, v0, :cond_0

    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' isn\'t readable."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lexpo/modules/filesystem/FileSystemModule;->ensurePermission(Landroid/net/Uri;Lexpo/modules/interfaces/filesystem/Permission;Ljava/lang/String;)V

    .line 794
    :cond_0
    sget-object v0, Lexpo/modules/interfaces/filesystem/Permission;->WRITE:Lexpo/modules/interfaces/filesystem/Permission;

    if-ne p2, v0, :cond_1

    .line 795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' isn\'t writable."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lexpo/modules/filesystem/FileSystemModule;->ensurePermission(Landroid/net/Uri;Lexpo/modules/interfaces/filesystem/Permission;Ljava/lang/String;)V

    .line 797
    :cond_1
    invoke-virtual {p2}, Lexpo/modules/interfaces/filesystem/Permission;->name()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' doesn\'t have permission \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lexpo/modules/filesystem/FileSystemModule;->ensurePermission(Landroid/net/Uri;Lexpo/modules/interfaces/filesystem/Permission;Ljava/lang/String;)V

    return-void
.end method

.method private final ensurePermission(Landroid/net/Uri;Lexpo/modules/interfaces/filesystem/Permission;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 784
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/FileSystemModule;->permissionsForUri(Landroid/net/Uri;)Ljava/util/EnumSet;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    return-void

    .line 785
    :cond_0
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final forceDelete(Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1013
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1014
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1016
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 1018
    :try_start_0
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v4}, Lexpo/modules/filesystem/FileSystemModule;->forceDelete(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-nez v2, :cond_2

    .line 1026
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 1027
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to delete directory "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1024
    :cond_2
    throw v2

    .line 1014
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to list contents of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1029
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_2
    return-void

    .line 1030
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to delete file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final getContext()Landroid/content/Context;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getReactContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lexpo/modules/kotlin/exception/Exceptions$AppContextLost;

    invoke-direct {v0}, Lexpo/modules/kotlin/exception/Exceptions$AppContextLost;-><init>()V

    throw v0
.end method

.method private final getFileSize(Ljava/io/File;)J
    .locals 7

    .line 1035
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1036
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    .line 1038
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    const-wide/16 v0, 0x0

    if-nez p1, :cond_1

    return-wide v0

    .line 2303
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, p1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 2304
    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, p1, v4

    .line 1039
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v5}, Lexpo/modules/filesystem/FileSystemModule;->getFileSize(Ljava/io/File;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 2305
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2306
    :cond_2
    check-cast v2, Ljava/util/List;

    .line 1039
    check-cast v2, Ljava/lang/Iterable;

    .line 2307
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 2308
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    .line 2309
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 2310
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2311
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    add-long/2addr v5, v3

    .line 1039
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_1

    :cond_4
    move-object p1, v2

    :goto_2
    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :cond_5
    return-wide v0
.end method

.method private final getInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1045
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Lexpo/modules/filesystem/FileSystemModule;->toFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v0, Ljava/io/InputStream;

    goto :goto_0

    .line 1046
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "asset"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lexpo/modules/filesystem/FileSystemModule;->openAssetInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 1047
    :cond_1
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/FileSystemModule;->isSAFUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lexpo/modules/filesystem/FileSystemModule;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_0
    return-object v0

    .line 1048
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported scheme for location \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\'."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final getInputStreamBytes(Ljava/io/InputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1082
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    .line 1084
    new-array v1, v1, [B

    .line 1087
    :goto_0
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 1088
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 1090
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const-string v1, "toByteArray(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1093
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object p1

    :catchall_0
    move-exception p1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1094
    :catch_1
    throw p1
.end method

.method private final getNearestSAFFile(Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;
    .locals 2

    .line 1059
    invoke-direct {p0}, Lexpo/modules/filesystem/FileSystemModule;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/documentfile/provider/DocumentFile;->fromSingleUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1060
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1063
    :cond_0
    invoke-direct {p0}, Lexpo/modules/filesystem/FileSystemModule;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/documentfile/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private final declared-synchronized getOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 4

    monitor-enter p0

    .line 986
    :try_start_0
    iget-object v0, p0, Lexpo/modules/filesystem/FileSystemModule;->client:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_0

    .line 987
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 988
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 989
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 990
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 992
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/filesystem/FileSystemModule;->client:Lokhttp3/OkHttpClient;

    .line 994
    :cond_0
    iget-object v0, p0, Lexpo/modules/filesystem/FileSystemModule;->client:Lokhttp3/OkHttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final getOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1053
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Lexpo/modules/filesystem/FileSystemModule;->toFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v0, Ljava/io/OutputStream;

    goto :goto_0

    .line 1054
    :cond_0
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/FileSystemModule;->isSAFUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lexpo/modules/filesystem/FileSystemModule;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1052
    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 1055
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported scheme for location \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\'."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final isSAFUri(Landroid/net/Uri;)Z
    .locals 4

    .line 1075
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    const/4 v2, 0x0

    const-string v3, "com.android.externalstorage"

    invoke-static {p1, v3, v1, v0, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private final md5(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 999
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v0, Ljava/io/InputStream;

    .line 1000
    check-cast v0, Ljava/io/Closeable;

    :try_start_0
    move-object p1, v0

    check-cast p1, Ljava/io/InputStream;

    .line 1001
    invoke-static {p1}, Lorg/apache/commons/codec/digest/DigestUtils;->md5(Ljava/io/InputStream;)[B

    move-result-object p1

    .line 1002
    invoke-static {p1}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([B)[C

    move-result-object p1

    const-string v1, "encodeHex(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 1000
    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private final openAssetInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 803
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "requireNotNull(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "substring(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 804
    invoke-direct {p0}, Lexpo/modules/filesystem/FileSystemModule;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    const-string v0, "open(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 803
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Required value was null."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final openResourceInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 810
    invoke-direct {p0}, Lexpo/modules/filesystem/FileSystemModule;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0}, Lexpo/modules/filesystem/FileSystemModule;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "raw"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 813
    invoke-direct {p0}, Lexpo/modules/filesystem/FileSystemModule;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0}, Lexpo/modules/filesystem/FileSystemModule;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 815
    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No resource found with the name \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 818
    :cond_1
    :goto_0
    invoke-direct {p0}, Lexpo/modules/filesystem/FileSystemModule;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    const-string v0, "openRawResource(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final parseFileUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1077
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/16 v1, 0x3a

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "substring(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final permissionsForPath(Ljava/lang/String;)Ljava/util/EnumSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/EnumSet<",
            "Lexpo/modules/interfaces/filesystem/Permission;",
            ">;"
        }
    .end annotation

    .line 754
    invoke-virtual {p0}, Lexpo/modules/filesystem/FileSystemModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getFilePermission()Lexpo/modules/interfaces/filesystem/FilePermissionModuleInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lexpo/modules/filesystem/FileSystemModule;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lexpo/modules/interfaces/filesystem/FilePermissionModuleInterface;->getPathPermissions(Landroid/content/Context;Ljava/lang/String;)Ljava/util/EnumSet;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private final permissionsForSAFUri(Landroid/net/Uri;)Ljava/util/EnumSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/EnumSet<",
            "Lexpo/modules/interfaces/filesystem/Permission;",
            ">;"
        }
    .end annotation

    .line 767
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/FileSystemModule;->getNearestSAFFile(Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    const-class v0, Lexpo/modules/interfaces/filesystem/Permission;

    .line 768
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 770
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 771
    sget-object v1, Lexpo/modules/interfaces/filesystem/Permission;->READ:Lexpo/modules/interfaces/filesystem/Permission;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 773
    :cond_0
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->canWrite()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 774
    sget-object p1, Lexpo/modules/interfaces/filesystem/Permission;->WRITE:Lexpo/modules/interfaces/filesystem/Permission;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 768
    :cond_1
    const-string p1, "apply(...)"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final permissionsForUri(Landroid/net/Uri;)Ljava/util/EnumSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/EnumSet<",
            "Lexpo/modules/interfaces/filesystem/Permission;",
            ">;"
        }
    .end annotation

    .line 758
    invoke-direct {p0, p1}, Lexpo/modules/filesystem/FileSystemModule;->isSAFUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lexpo/modules/filesystem/FileSystemModule;->permissionsForSAFUri(Landroid/net/Uri;)Ljava/util/EnumSet;

    move-result-object p1

    goto :goto_0

    .line 759
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lexpo/modules/interfaces/filesystem/Permission;->READ:Lexpo/modules/interfaces/filesystem/Permission;

    check-cast p1, Ljava/lang/Enum;

    invoke-static {p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    goto :goto_0

    .line 760
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "asset"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Lexpo/modules/interfaces/filesystem/Permission;->READ:Lexpo/modules/interfaces/filesystem/Permission;

    check-cast p1, Ljava/lang/Enum;

    invoke-static {p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    goto :goto_0

    .line 761
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lexpo/modules/filesystem/FileSystemModule;->permissionsForPath(Ljava/lang/String;)Ljava/util/EnumSet;

    move-result-object p1

    goto :goto_0

    .line 762
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    sget-object p1, Lexpo/modules/interfaces/filesystem/Permission;->READ:Lexpo/modules/interfaces/filesystem/Permission;

    check-cast p1, Ljava/lang/Enum;

    invoke-static {p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    goto :goto_0

    :cond_4
    const-class p1, Lexpo/modules/interfaces/filesystem/Permission;

    .line 763
    invoke-static {p1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final toFile(Landroid/net/Uri;)Ljava/io/File;
    .locals 3

    .line 1068
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1069
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 1071
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid Uri: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final transformFilesFromSAF(Landroidx/documentfile/provider/DocumentFile;Ljava/io/File;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 823
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 826
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const-string v1, "Couldn\'t create folder in output dir."

    if-nez v0, :cond_2

    .line 827
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 828
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 829
    :cond_1
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 832
    :cond_2
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 833
    :cond_3
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 836
    :cond_4
    :goto_0
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 837
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->listFiles()[Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    const-string v1, "listFiles(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    .line 838
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v3, p2, p3}, Lexpo/modules/filesystem/FileSystemModule;->transformFilesFromSAF(Landroidx/documentfile/provider/DocumentFile;Ljava/io/File;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    if-nez p3, :cond_6

    .line 841
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->delete()Z

    :cond_6
    return-void

    .line 846
    :cond_7
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 847
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 848
    new-instance v1, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 850
    :cond_8
    new-instance v1, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 852
    :goto_2
    invoke-direct {p0}, Lexpo/modules/filesystem/FileSystemModule;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p2

    check-cast p2, Ljava/io/Closeable;

    .line 853
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/io/InputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v2, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v1, v2

    check-cast v1, Ljava/io/FileOutputStream;

    check-cast v1, Ljava/io/OutputStream;

    invoke-static {v0, v1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    :try_start_2
    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {p2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    if-nez p3, :cond_9

    .line 855
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->delete()Z

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 853
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p3

    :try_start_4
    invoke-static {v2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p3

    invoke-static {p2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3

    :cond_9
    :goto_3
    return-void
.end method

.method private final translateHeaders(Lokhttp3/Headers;)Landroid/os/Bundle;
    .locals 7

    .line 1102
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1103
    invoke-virtual {p1}, Lokhttp3/Headers;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 1104
    invoke-virtual {p1, v2}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    .line 1106
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1109
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1107
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1112
    :cond_0
    invoke-virtual {p1, v2}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
    .locals 14

    .line 89
    const-string v0, "/"

    move-object v1, p0

    check-cast v1, Lexpo/modules/kotlin/modules/Module;

    .line 1119
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".ModuleDefinition"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1121
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[ExpoModulesCore] "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1122
    invoke-static {v2}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 1119
    :try_start_0
    new-instance v2, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;

    invoke-direct {v2, v1}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    .line 90
    const-string v1, "ExponentFileSystem"

    invoke-virtual {v2, v1}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Name(Ljava/lang/String;)V

    const/4 v1, 0x3

    .line 93
    new-array v3, v1, [Lkotlin/Pair;

    const-string v4, "documentDirectory"

    invoke-static {p0}, Lexpo/modules/filesystem/FileSystemModule;->access$getContext(Lexpo/modules/filesystem/FileSystemModule;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 94
    const-string v4, "cacheDirectory"

    invoke-static {p0}, Lexpo/modules/filesystem/FileSystemModule;->access$getContext(Lexpo/modules/filesystem/FileSystemModule;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v3, v4

    .line 95
    const-string v0, "bundleDirectory"

    const-string v6, "asset:///"

    invoke-static {v0, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v6, 0x2

    aput-object v0, v3, v6

    .line 92
    invoke-virtual {v2, v3}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Constants([Lkotlin/Pair;)V

    .line 99
    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "expo-file-system.downloadProgress"

    aput-object v3, v0, v5

    .line 100
    const-string v3, "expo-file-system.uploadProgress"

    aput-object v3, v0, v4

    .line 98
    invoke-virtual {v2, v0}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->Events([Ljava/lang/String;)V

    .line 1125
    invoke-virtual {v2}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->getEventListeners()Ljava/util/Map;

    move-result-object v0

    sget-object v3, Lexpo/modules/kotlin/events/EventName;->MODULE_CREATE:Lexpo/modules/kotlin/events/EventName;

    new-instance v7, Lexpo/modules/kotlin/events/BasicEventListener;

    sget-object v8, Lexpo/modules/kotlin/events/EventName;->MODULE_CREATE:Lexpo/modules/kotlin/events/EventName;

    new-instance v9, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$OnCreate$1;

    invoke-direct {v9, p0}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$OnCreate$1;-><init>(Lexpo/modules/filesystem/FileSystemModule;)V

    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-direct {v7, v8, v9}, Lexpo/modules/kotlin/events/BasicEventListener;-><init>(Lexpo/modules/kotlin/events/EventName;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    move-object v0, v2

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "getInfoAsync"

    .line 1129
    const-class v7, Ljava/lang/String;

    .line 1130
    const-class v7, Lexpo/modules/filesystem/InfoOptions;

    .line 1133
    new-array v7, v6, [Lexpo/modules/kotlin/types/AnyType;

    .line 1134
    sget-object v8, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 1135
    new-instance v9, Lkotlin/Pair;

    const-class v10, Ljava/lang/String;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1136
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    if-nez v8, :cond_0

    .line 1134
    sget-object v8, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$1;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$1;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 1137
    new-instance v9, Lexpo/modules/kotlin/types/AnyType;

    .line 1138
    new-instance v10, Lexpo/modules/kotlin/types/LazyKType;

    const-class v11, Ljava/lang/String;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-direct {v10, v11, v5, v8}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v10, Lkotlin/reflect/KType;

    .line 1137
    invoke-direct {v9, v10}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    move-object v8, v9

    .line 1134
    :cond_0
    aput-object v8, v7, v5

    .line 1145
    sget-object v8, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 1135
    new-instance v9, Lkotlin/Pair;

    const-class v10, Lexpo/modules/filesystem/InfoOptions;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1136
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    if-nez v8, :cond_1

    .line 1145
    sget-object v8, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$2;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$2;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 1146
    new-instance v9, Lexpo/modules/kotlin/types/AnyType;

    .line 1147
    new-instance v10, Lexpo/modules/kotlin/types/LazyKType;

    const-class v11, Lexpo/modules/filesystem/InfoOptions;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-direct {v10, v11, v5, v8}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v10, Lkotlin/reflect/KType;

    .line 1146
    invoke-direct {v9, v10}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    move-object v8, v9

    .line 1145
    :cond_1
    aput-object v8, v7, v4

    .line 1127
    new-instance v8, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$3;

    invoke-direct {v8, p0}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$3;-><init>(Lexpo/modules/filesystem/FileSystemModule;)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 1153
    const-class v9, Landroid/os/Bundle;

    .line 1157
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1163
    new-instance v9, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_0

    .line 1165
    :cond_2
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1167
    new-instance v9, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_0

    .line 1169
    :cond_3
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1171
    new-instance v9, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_0

    .line 1173
    :cond_4
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1175
    new-instance v9, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_0

    .line 1177
    :cond_5
    const-class v10, Ljava/lang/String;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1179
    new-instance v9, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_0

    .line 1181
    :cond_6
    new-instance v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    .line 1183
    :goto_0
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    move-object v0, v2

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "readAsStringAsync"

    .line 1187
    const-class v7, Ljava/lang/String;

    .line 1188
    const-class v7, Lexpo/modules/filesystem/ReadingOptions;

    .line 1191
    new-array v7, v6, [Lexpo/modules/kotlin/types/AnyType;

    .line 1192
    sget-object v8, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 1193
    new-instance v9, Lkotlin/Pair;

    const-class v10, Ljava/lang/String;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1194
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    if-nez v8, :cond_7

    .line 1192
    sget-object v8, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$4;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$4;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 1195
    new-instance v9, Lexpo/modules/kotlin/types/AnyType;

    .line 1196
    new-instance v10, Lexpo/modules/kotlin/types/LazyKType;

    const-class v11, Ljava/lang/String;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-direct {v10, v11, v5, v8}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v10, Lkotlin/reflect/KType;

    .line 1195
    invoke-direct {v9, v10}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    move-object v8, v9

    .line 1192
    :cond_7
    aput-object v8, v7, v5

    .line 1203
    sget-object v8, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 1193
    new-instance v9, Lkotlin/Pair;

    const-class v10, Lexpo/modules/filesystem/ReadingOptions;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1194
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    if-nez v8, :cond_8

    .line 1203
    sget-object v8, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$5;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$5;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 1204
    new-instance v9, Lexpo/modules/kotlin/types/AnyType;

    .line 1205
    new-instance v10, Lexpo/modules/kotlin/types/LazyKType;

    const-class v11, Lexpo/modules/filesystem/ReadingOptions;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-direct {v10, v11, v5, v8}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v10, Lkotlin/reflect/KType;

    .line 1204
    invoke-direct {v9, v10}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    move-object v8, v9

    .line 1203
    :cond_8
    aput-object v8, v7, v4

    .line 1185
    new-instance v8, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$6;

    invoke-direct {v8, p0}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$6;-><init>(Lexpo/modules/filesystem/FileSystemModule;)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 1213
    new-instance v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    .line 1242
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    move-object v0, v2

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string/jumbo v3, "writeAsStringAsync"

    .line 1246
    const-class v7, Ljava/lang/String;

    .line 1247
    const-class v7, Ljava/lang/String;

    .line 1248
    const-class v7, Lexpo/modules/filesystem/WritingOptions;

    .line 1251
    new-array v7, v1, [Lexpo/modules/kotlin/types/AnyType;

    .line 1252
    sget-object v8, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 1253
    new-instance v9, Lkotlin/Pair;

    const-class v10, Ljava/lang/String;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1254
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    if-nez v8, :cond_9

    .line 1252
    sget-object v8, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$7;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$7;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 1255
    new-instance v9, Lexpo/modules/kotlin/types/AnyType;

    .line 1256
    new-instance v10, Lexpo/modules/kotlin/types/LazyKType;

    const-class v11, Ljava/lang/String;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-direct {v10, v11, v5, v8}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v10, Lkotlin/reflect/KType;

    .line 1255
    invoke-direct {v9, v10}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    move-object v8, v9

    .line 1252
    :cond_9
    aput-object v8, v7, v5

    .line 1263
    sget-object v8, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 1253
    new-instance v9, Lkotlin/Pair;

    const-class v10, Ljava/lang/String;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1254
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    if-nez v8, :cond_a

    .line 1263
    sget-object v8, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$8;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$8;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 1264
    new-instance v9, Lexpo/modules/kotlin/types/AnyType;

    .line 1265
    new-instance v10, Lexpo/modules/kotlin/types/LazyKType;

    const-class v11, Ljava/lang/String;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-direct {v10, v11, v5, v8}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v10, Lkotlin/reflect/KType;

    .line 1264
    invoke-direct {v9, v10}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    move-object v8, v9

    .line 1263
    :cond_a
    aput-object v8, v7, v4

    .line 1272
    sget-object v8, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 1253
    new-instance v9, Lkotlin/Pair;

    const-class v10, Lexpo/modules/filesystem/WritingOptions;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1254
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    if-nez v8, :cond_b

    .line 1272
    sget-object v8, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$9;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$9;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 1273
    new-instance v9, Lexpo/modules/kotlin/types/AnyType;

    .line 1274
    new-instance v10, Lexpo/modules/kotlin/types/LazyKType;

    const-class v11, Lexpo/modules/filesystem/WritingOptions;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-direct {v10, v11, v5, v8}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v10, Lkotlin/reflect/KType;

    .line 1273
    invoke-direct {v9, v10}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    move-object v8, v9

    .line 1272
    :cond_b
    aput-object v8, v7, v6

    .line 1244
    new-instance v8, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$10;

    invoke-direct {v8, p0}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$10;-><init>(Lexpo/modules/filesystem/FileSystemModule;)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 1281
    const-class v9, Lkotlin/Unit;

    .line 1285
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 1291
    new-instance v9, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_1

    .line 1293
    :cond_c
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 1295
    new-instance v9, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_1

    .line 1297
    :cond_d
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 1299
    new-instance v9, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_1

    .line 1301
    :cond_e
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 1303
    new-instance v9, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_1

    .line 1305
    :cond_f
    const-class v10, Ljava/lang/String;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 1307
    new-instance v9, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_1

    .line 1309
    :cond_10
    new-instance v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    .line 1311
    :goto_1
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    move-object v0, v2

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "deleteAsync"

    .line 1315
    const-class v7, Ljava/lang/String;

    .line 1316
    const-class v7, Lexpo/modules/filesystem/DeletingOptions;

    .line 1319
    new-array v7, v6, [Lexpo/modules/kotlin/types/AnyType;

    .line 1320
    sget-object v8, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 1321
    new-instance v9, Lkotlin/Pair;

    const-class v10, Ljava/lang/String;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1322
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    if-nez v8, :cond_11

    .line 1320
    sget-object v8, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$11;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$11;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 1323
    new-instance v9, Lexpo/modules/kotlin/types/AnyType;

    .line 1324
    new-instance v10, Lexpo/modules/kotlin/types/LazyKType;

    const-class v11, Ljava/lang/String;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-direct {v10, v11, v5, v8}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v10, Lkotlin/reflect/KType;

    .line 1323
    invoke-direct {v9, v10}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    move-object v8, v9

    .line 1320
    :cond_11
    aput-object v8, v7, v5

    .line 1331
    sget-object v8, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 1321
    new-instance v9, Lkotlin/Pair;

    const-class v10, Lexpo/modules/filesystem/DeletingOptions;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1322
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    if-nez v8, :cond_12

    .line 1331
    sget-object v8, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$12;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$12;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 1332
    new-instance v9, Lexpo/modules/kotlin/types/AnyType;

    .line 1333
    new-instance v10, Lexpo/modules/kotlin/types/LazyKType;

    const-class v11, Lexpo/modules/filesystem/DeletingOptions;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-direct {v10, v11, v5, v8}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v10, Lkotlin/reflect/KType;

    .line 1332
    invoke-direct {v9, v10}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    move-object v8, v9

    .line 1331
    :cond_12
    aput-object v8, v7, v4

    .line 1313
    new-instance v8, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$13;

    invoke-direct {v8, p0}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$13;-><init>(Lexpo/modules/filesystem/FileSystemModule;)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 1340
    const-class v9, Lkotlin/Unit;

    .line 1344
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 1350
    new-instance v9, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_2

    .line 1352
    :cond_13
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 1354
    new-instance v9, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_2

    .line 1356
    :cond_14
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 1358
    new-instance v9, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_2

    .line 1360
    :cond_15
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 1362
    new-instance v9, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_2

    .line 1364
    :cond_16
    const-class v10, Ljava/lang/String;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 1366
    new-instance v9, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_2

    .line 1368
    :cond_17
    new-instance v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    .line 1370
    :goto_2
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    move-object v0, v2

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "moveAsync"

    .line 1372
    const-class v7, Lexpo/modules/filesystem/RelocatingOptions;

    const-class v8, Lexpo/modules/kotlin/Promise;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 1373
    new-instance v7, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    new-array v8, v5, [Lexpo/modules/kotlin/types/AnyType;

    .line 1379
    new-instance v9, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$14;

    invoke-direct {v9, p0}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$14;-><init>(Lexpo/modules/filesystem/FileSystemModule;)V

    check-cast v9, Lkotlin/jvm/functions/Function2;

    .line 1373
    invoke-direct {v7, v3, v8, v9}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto/16 :goto_4

    .line 1381
    :cond_18
    const-class v7, Lexpo/modules/filesystem/RelocatingOptions;

    .line 1384
    new-array v7, v4, [Lexpo/modules/kotlin/types/AnyType;

    .line 1385
    sget-object v8, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 1386
    new-instance v9, Lkotlin/Pair;

    const-class v10, Lexpo/modules/filesystem/RelocatingOptions;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1387
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    if-nez v8, :cond_19

    .line 1385
    sget-object v8, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$15;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$15;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 1388
    new-instance v9, Lexpo/modules/kotlin/types/AnyType;

    .line 1389
    new-instance v10, Lexpo/modules/kotlin/types/LazyKType;

    const-class v11, Lexpo/modules/filesystem/RelocatingOptions;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-direct {v10, v11, v5, v8}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v10, Lkotlin/reflect/KType;

    .line 1388
    invoke-direct {v9, v10}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    move-object v8, v9

    .line 1385
    :cond_19
    aput-object v8, v7, v5

    .line 1375
    new-instance v8, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$16;

    invoke-direct {v8, p0}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$16;-><init>(Lexpo/modules/filesystem/FileSystemModule;)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 1405
    const-class v9, Lkotlin/Unit;

    .line 1409
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 1415
    new-instance v9, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    :goto_3
    move-object v7, v9

    goto :goto_4

    .line 1417
    :cond_1a
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 1419
    new-instance v9, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_3

    .line 1421
    :cond_1b
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 1423
    new-instance v9, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_3

    .line 1425
    :cond_1c
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1d

    .line 1427
    new-instance v9, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_3

    .line 1429
    :cond_1d
    const-class v10, Ljava/lang/String;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 1431
    new-instance v9, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_3

    .line 1433
    :cond_1e
    new-instance v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_3

    .line 1434
    :goto_4
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    move-object v0, v2

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "copyAsync"

    .line 1436
    const-class v7, Lexpo/modules/filesystem/RelocatingOptions;

    const-class v8, Lexpo/modules/kotlin/Promise;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 1437
    new-instance v7, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    new-array v8, v5, [Lexpo/modules/kotlin/types/AnyType;

    .line 1443
    new-instance v9, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$17;

    invoke-direct {v9, p0}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$17;-><init>(Lexpo/modules/filesystem/FileSystemModule;)V

    check-cast v9, Lkotlin/jvm/functions/Function2;

    .line 1437
    invoke-direct {v7, v3, v8, v9}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto/16 :goto_6

    .line 1445
    :cond_1f
    const-class v7, Lexpo/modules/filesystem/RelocatingOptions;

    .line 1448
    new-array v7, v4, [Lexpo/modules/kotlin/types/AnyType;

    .line 1449
    sget-object v8, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 1450
    new-instance v9, Lkotlin/Pair;

    const-class v10, Lexpo/modules/filesystem/RelocatingOptions;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1451
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    if-nez v8, :cond_20

    .line 1449
    sget-object v8, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$18;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$18;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 1452
    new-instance v9, Lexpo/modules/kotlin/types/AnyType;

    .line 1453
    new-instance v10, Lexpo/modules/kotlin/types/LazyKType;

    const-class v11, Lexpo/modules/filesystem/RelocatingOptions;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-direct {v10, v11, v5, v8}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v10, Lkotlin/reflect/KType;

    .line 1452
    invoke-direct {v9, v10}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    move-object v8, v9

    .line 1449
    :cond_20
    aput-object v8, v7, v5

    .line 1439
    new-instance v8, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$19;

    invoke-direct {v8, p0}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$19;-><init>(Lexpo/modules/filesystem/FileSystemModule;)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 1469
    const-class v9, Ljava/lang/Object;

    .line 1473
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_21

    .line 1479
    new-instance v9, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    :goto_5
    move-object v7, v9

    goto :goto_6

    .line 1481
    :cond_21
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_22

    .line 1483
    new-instance v9, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_5

    .line 1485
    :cond_22
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_23

    .line 1487
    new-instance v9, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_5

    .line 1489
    :cond_23
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_24

    .line 1491
    new-instance v9, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_5

    .line 1493
    :cond_24
    const-class v10, Ljava/lang/String;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_25

    .line 1495
    new-instance v9, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_5

    .line 1497
    :cond_25
    new-instance v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_5

    .line 1498
    :goto_6
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    move-object v0, v2

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "makeDirectoryAsync"

    .line 1502
    const-class v7, Ljava/lang/String;

    .line 1503
    const-class v7, Lexpo/modules/filesystem/MakeDirectoryOptions;

    .line 1506
    new-array v7, v6, [Lexpo/modules/kotlin/types/AnyType;

    .line 1507
    sget-object v8, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 1508
    new-instance v9, Lkotlin/Pair;

    const-class v10, Ljava/lang/String;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1509
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    if-nez v8, :cond_26

    .line 1507
    sget-object v8, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$20;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$20;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 1510
    new-instance v9, Lexpo/modules/kotlin/types/AnyType;

    .line 1511
    new-instance v10, Lexpo/modules/kotlin/types/LazyKType;

    const-class v11, Ljava/lang/String;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-direct {v10, v11, v5, v8}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v10, Lkotlin/reflect/KType;

    .line 1510
    invoke-direct {v9, v10}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    move-object v8, v9

    .line 1507
    :cond_26
    aput-object v8, v7, v5

    .line 1518
    sget-object v8, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 1508
    new-instance v9, Lkotlin/Pair;

    const-class v10, Lexpo/modules/filesystem/MakeDirectoryOptions;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1509
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    if-nez v8, :cond_27

    .line 1518
    sget-object v8, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$21;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$21;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 1519
    new-instance v9, Lexpo/modules/kotlin/types/AnyType;

    .line 1520
    new-instance v10, Lexpo/modules/kotlin/types/LazyKType;

    const-class v11, Lexpo/modules/filesystem/MakeDirectoryOptions;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-direct {v10, v11, v5, v8}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v10, Lkotlin/reflect/KType;

    .line 1519
    invoke-direct {v9, v10}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    move-object v8, v9

    .line 1518
    :cond_27
    aput-object v8, v7, v4

    .line 1500
    new-instance v8, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$22;

    invoke-direct {v8, p0}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$22;-><init>(Lexpo/modules/filesystem/FileSystemModule;)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 1527
    const-class v9, Lkotlin/Unit;

    .line 1531
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_28

    .line 1537
    new-instance v9, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_7

    .line 1539
    :cond_28
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_29

    .line 1541
    new-instance v9, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_7

    .line 1543
    :cond_29
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2a

    .line 1545
    new-instance v9, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_7

    .line 1547
    :cond_2a
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2b

    .line 1549
    new-instance v9, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_7

    .line 1551
    :cond_2b
    const-class v10, Ljava/lang/String;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2c

    .line 1553
    new-instance v9, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_7

    .line 1555
    :cond_2c
    new-instance v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    .line 1557
    :goto_7
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    move-object v0, v2

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "readDirectoryAsync"

    .line 1559
    const-class v7, Ljava/lang/String;

    const-class v8, Lexpo/modules/kotlin/Promise;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    .line 1560
    new-instance v7, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    new-array v8, v5, [Lexpo/modules/kotlin/types/AnyType;

    .line 1566
    new-instance v9, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$23;

    invoke-direct {v9, p0}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$23;-><init>(Lexpo/modules/filesystem/FileSystemModule;)V

    check-cast v9, Lkotlin/jvm/functions/Function2;

    .line 1560
    invoke-direct {v7, v3, v8, v9}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto/16 :goto_9

    .line 1568
    :cond_2d
    const-class v7, Ljava/lang/String;

    .line 1571
    new-array v7, v4, [Lexpo/modules/kotlin/types/AnyType;

    .line 1572
    sget-object v8, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 1573
    new-instance v9, Lkotlin/Pair;

    const-class v10, Ljava/lang/String;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1574
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    if-nez v8, :cond_2e

    .line 1572
    sget-object v8, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$24;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$24;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 1575
    new-instance v9, Lexpo/modules/kotlin/types/AnyType;

    .line 1576
    new-instance v10, Lexpo/modules/kotlin/types/LazyKType;

    const-class v11, Ljava/lang/String;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-direct {v10, v11, v4, v8}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v10, Lkotlin/reflect/KType;

    .line 1575
    invoke-direct {v9, v10}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    move-object v8, v9

    .line 1572
    :cond_2e
    aput-object v8, v7, v5

    .line 1562
    new-instance v8, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$25;

    invoke-direct {v8, p0}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$25;-><init>(Lexpo/modules/filesystem/FileSystemModule;)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 1592
    const-class v9, Ljava/util/List;

    .line 1596
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2f

    .line 1602
    new-instance v9, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    :goto_8
    move-object v7, v9

    goto :goto_9

    .line 1604
    :cond_2f
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_30

    .line 1606
    new-instance v9, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_8

    .line 1608
    :cond_30
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_31

    .line 1610
    new-instance v9, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_8

    .line 1612
    :cond_31
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_32

    .line 1614
    new-instance v9, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_8

    .line 1616
    :cond_32
    const-class v10, Ljava/lang/String;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_33

    .line 1618
    new-instance v9, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_8

    .line 1620
    :cond_33
    new-instance v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_8

    .line 1621
    :goto_9
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    move-object v0, v2

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "getTotalDiskCapacityAsync"

    .line 1624
    new-array v7, v5, [Lexpo/modules/kotlin/types/AnyType;

    .line 1623
    new-instance v8, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$26;

    invoke-direct {v8}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$26;-><init>()V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 1625
    const-class v9, Ljava/lang/Double;

    .line 1629
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_34

    .line 1635
    new-instance v9, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_a

    .line 1637
    :cond_34
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_35

    .line 1639
    new-instance v9, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_a

    .line 1641
    :cond_35
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_36

    .line 1643
    new-instance v9, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_a

    .line 1645
    :cond_36
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_37

    .line 1647
    new-instance v9, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_a

    .line 1649
    :cond_37
    const-class v10, Ljava/lang/String;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_38

    .line 1651
    new-instance v9, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_a

    .line 1653
    :cond_38
    new-instance v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    .line 1654
    :goto_a
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    move-object v0, v2

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "getFreeDiskStorageAsync"

    .line 1657
    new-array v7, v5, [Lexpo/modules/kotlin/types/AnyType;

    .line 1656
    new-instance v8, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$27;

    invoke-direct {v8}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$27;-><init>()V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 1658
    const-class v9, Ljava/lang/Double;

    .line 1662
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_39

    .line 1668
    new-instance v9, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_b

    .line 1670
    :cond_39
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3a

    .line 1672
    new-instance v9, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_b

    .line 1674
    :cond_3a
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3b

    .line 1676
    new-instance v9, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_b

    .line 1678
    :cond_3b
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3c

    .line 1680
    new-instance v9, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_b

    .line 1682
    :cond_3c
    const-class v10, Ljava/lang/String;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3d

    .line 1684
    new-instance v9, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_b

    .line 1686
    :cond_3d
    new-instance v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    .line 1687
    :goto_b
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    move-object v0, v2

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "getContentUriAsync"

    .line 1689
    const-class v7, Ljava/lang/String;

    const-class v8, Lexpo/modules/kotlin/Promise;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3e

    .line 1690
    new-instance v7, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    new-array v8, v5, [Lexpo/modules/kotlin/types/AnyType;

    .line 1696
    new-instance v9, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$28;

    invoke-direct {v9, p0}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$28;-><init>(Lexpo/modules/filesystem/FileSystemModule;)V

    check-cast v9, Lkotlin/jvm/functions/Function2;

    .line 1690
    invoke-direct {v7, v3, v8, v9}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto/16 :goto_d

    .line 1698
    :cond_3e
    const-class v7, Ljava/lang/String;

    .line 1701
    new-array v7, v4, [Lexpo/modules/kotlin/types/AnyType;

    .line 1702
    sget-object v8, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 1703
    new-instance v9, Lkotlin/Pair;

    const-class v10, Ljava/lang/String;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1704
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    if-nez v8, :cond_3f

    .line 1702
    sget-object v8, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$29;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$29;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 1705
    new-instance v9, Lexpo/modules/kotlin/types/AnyType;

    .line 1706
    new-instance v10, Lexpo/modules/kotlin/types/LazyKType;

    const-class v11, Ljava/lang/String;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-direct {v10, v11, v5, v8}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v10, Lkotlin/reflect/KType;

    .line 1705
    invoke-direct {v9, v10}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    move-object v8, v9

    .line 1702
    :cond_3f
    aput-object v8, v7, v5

    .line 1692
    new-instance v8, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$30;

    invoke-direct {v8, p0}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$30;-><init>(Lexpo/modules/filesystem/FileSystemModule;)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 1722
    const-class v9, Ljava/lang/String;

    .line 1726
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_40

    .line 1732
    new-instance v9, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    :goto_c
    move-object v7, v9

    goto :goto_d

    .line 1734
    :cond_40
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_41

    .line 1736
    new-instance v9, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_c

    .line 1738
    :cond_41
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_42

    .line 1740
    new-instance v9, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_c

    .line 1742
    :cond_42
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_43

    .line 1744
    new-instance v9, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_c

    .line 1746
    :cond_43
    const-class v10, Ljava/lang/String;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_44

    .line 1748
    new-instance v9, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_c

    .line 1750
    :cond_44
    new-instance v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_c

    .line 1751
    :goto_d
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    move-object v0, v2

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "readSAFDirectoryAsync"

    .line 1753
    const-class v7, Ljava/lang/String;

    const-class v8, Lexpo/modules/kotlin/Promise;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_45

    .line 1754
    new-instance v7, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    new-array v8, v5, [Lexpo/modules/kotlin/types/AnyType;

    .line 1760
    new-instance v9, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$31;

    invoke-direct {v9, p0}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$31;-><init>(Lexpo/modules/filesystem/FileSystemModule;)V

    check-cast v9, Lkotlin/jvm/functions/Function2;

    .line 1754
    invoke-direct {v7, v3, v8, v9}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto/16 :goto_f

    .line 1762
    :cond_45
    const-class v7, Ljava/lang/String;

    .line 1765
    new-array v7, v4, [Lexpo/modules/kotlin/types/AnyType;

    .line 1766
    sget-object v8, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 1767
    new-instance v9, Lkotlin/Pair;

    const-class v10, Ljava/lang/String;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1768
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    if-nez v8, :cond_46

    .line 1766
    sget-object v8, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$32;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$32;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 1769
    new-instance v9, Lexpo/modules/kotlin/types/AnyType;

    .line 1770
    new-instance v10, Lexpo/modules/kotlin/types/LazyKType;

    const-class v11, Ljava/lang/String;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-direct {v10, v11, v5, v8}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v10, Lkotlin/reflect/KType;

    .line 1769
    invoke-direct {v9, v10}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    move-object v8, v9

    .line 1766
    :cond_46
    aput-object v8, v7, v5

    .line 1756
    new-instance v8, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$33;

    invoke-direct {v8, p0}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$33;-><init>(Lexpo/modules/filesystem/FileSystemModule;)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 1786
    const-class v9, Ljava/util/List;

    .line 1790
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_47

    .line 1796
    new-instance v9, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    :goto_e
    move-object v7, v9

    goto :goto_f

    .line 1798
    :cond_47
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_48

    .line 1800
    new-instance v9, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_e

    .line 1802
    :cond_48
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_49

    .line 1804
    new-instance v9, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_e

    .line 1806
    :cond_49
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4a

    .line 1808
    new-instance v9, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_e

    .line 1810
    :cond_4a
    const-class v10, Ljava/lang/String;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4b

    .line 1812
    new-instance v9, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_e

    .line 1814
    :cond_4b
    new-instance v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_e

    .line 1815
    :goto_f
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    move-object v0, v2

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "makeSAFDirectoryAsync"

    .line 1819
    const-class v7, Ljava/lang/String;

    .line 1820
    const-class v7, Ljava/lang/String;

    .line 1823
    new-array v7, v6, [Lexpo/modules/kotlin/types/AnyType;

    .line 1824
    sget-object v8, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 1825
    new-instance v9, Lkotlin/Pair;

    const-class v10, Ljava/lang/String;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1826
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    if-nez v8, :cond_4c

    .line 1824
    sget-object v8, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$34;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$34;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 1827
    new-instance v9, Lexpo/modules/kotlin/types/AnyType;

    .line 1828
    new-instance v10, Lexpo/modules/kotlin/types/LazyKType;

    const-class v11, Ljava/lang/String;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-direct {v10, v11, v5, v8}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v10, Lkotlin/reflect/KType;

    .line 1827
    invoke-direct {v9, v10}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    move-object v8, v9

    .line 1824
    :cond_4c
    aput-object v8, v7, v5

    .line 1835
    sget-object v8, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 1825
    new-instance v9, Lkotlin/Pair;

    const-class v10, Ljava/lang/String;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1826
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    if-nez v8, :cond_4d

    .line 1835
    sget-object v8, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$35;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$35;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 1836
    new-instance v9, Lexpo/modules/kotlin/types/AnyType;

    .line 1837
    new-instance v10, Lexpo/modules/kotlin/types/LazyKType;

    const-class v11, Ljava/lang/String;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-direct {v10, v11, v5, v8}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v10, Lkotlin/reflect/KType;

    .line 1836
    invoke-direct {v9, v10}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    move-object v8, v9

    .line 1835
    :cond_4d
    aput-object v8, v7, v4

    .line 1817
    new-instance v8, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$36;

    invoke-direct {v8, p0}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$36;-><init>(Lexpo/modules/filesystem/FileSystemModule;)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 1844
    const-class v9, Ljava/lang/String;

    .line 1848
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4e

    .line 1854
    new-instance v9, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_10

    .line 1856
    :cond_4e
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4f

    .line 1858
    new-instance v9, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_10

    .line 1860
    :cond_4f
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_50

    .line 1862
    new-instance v9, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_10

    .line 1864
    :cond_50
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_51

    .line 1866
    new-instance v9, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_10

    .line 1868
    :cond_51
    const-class v10, Ljava/lang/String;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_52

    .line 1870
    new-instance v9, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_10

    .line 1872
    :cond_52
    new-instance v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    .line 1874
    :goto_10
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    move-object v0, v2

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "createSAFFileAsync"

    .line 1878
    const-class v7, Ljava/lang/String;

    .line 1879
    const-class v7, Ljava/lang/String;

    .line 1880
    const-class v7, Ljava/lang/String;

    .line 1883
    new-array v7, v1, [Lexpo/modules/kotlin/types/AnyType;

    .line 1884
    sget-object v8, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 1885
    new-instance v9, Lkotlin/Pair;

    const-class v10, Ljava/lang/String;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1886
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    if-nez v8, :cond_53

    .line 1884
    sget-object v8, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$37;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$37;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 1887
    new-instance v9, Lexpo/modules/kotlin/types/AnyType;

    .line 1888
    new-instance v10, Lexpo/modules/kotlin/types/LazyKType;

    const-class v11, Ljava/lang/String;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-direct {v10, v11, v5, v8}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v10, Lkotlin/reflect/KType;

    .line 1887
    invoke-direct {v9, v10}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    move-object v8, v9

    .line 1884
    :cond_53
    aput-object v8, v7, v5

    .line 1895
    sget-object v8, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 1885
    new-instance v9, Lkotlin/Pair;

    const-class v10, Ljava/lang/String;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1886
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    if-nez v8, :cond_54

    .line 1895
    sget-object v8, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$38;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$38;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 1896
    new-instance v9, Lexpo/modules/kotlin/types/AnyType;

    .line 1897
    new-instance v10, Lexpo/modules/kotlin/types/LazyKType;

    const-class v11, Ljava/lang/String;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-direct {v10, v11, v5, v8}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v10, Lkotlin/reflect/KType;

    .line 1896
    invoke-direct {v9, v10}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    move-object v8, v9

    .line 1895
    :cond_54
    aput-object v8, v7, v4

    .line 1904
    sget-object v8, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 1885
    new-instance v9, Lkotlin/Pair;

    const-class v10, Ljava/lang/String;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1886
    invoke-virtual {v8}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lexpo/modules/kotlin/types/AnyType;

    if-nez v8, :cond_55

    .line 1904
    sget-object v8, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$39;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$39;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    .line 1905
    new-instance v9, Lexpo/modules/kotlin/types/AnyType;

    .line 1906
    new-instance v10, Lexpo/modules/kotlin/types/LazyKType;

    const-class v11, Ljava/lang/String;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-direct {v10, v11, v5, v8}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v10, Lkotlin/reflect/KType;

    .line 1905
    invoke-direct {v9, v10}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    move-object v8, v9

    .line 1904
    :cond_55
    aput-object v8, v7, v6

    .line 1876
    new-instance v8, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$40;

    invoke-direct {v8, p0}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$40;-><init>(Lexpo/modules/filesystem/FileSystemModule;)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    .line 1913
    const-class v9, Ljava/lang/String;

    .line 1917
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_56

    .line 1923
    new-instance v9, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_11

    .line 1925
    :cond_56
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_57

    .line 1927
    new-instance v9, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_11

    .line 1929
    :cond_57
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_58

    .line 1931
    new-instance v9, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_11

    .line 1933
    :cond_58
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_59

    .line 1935
    new-instance v9, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_11

    .line 1937
    :cond_59
    const-class v10, Ljava/lang/String;

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5a

    .line 1939
    new-instance v9, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_11

    .line 1941
    :cond_5a
    new-instance v9, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    invoke-direct {v9, v3, v7, v8}, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v9, Lexpo/modules/kotlin/functions/AsyncFunction;

    .line 1943
    :goto_11
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    move-object v0, v2

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "requestDirectoryPermissionsAsync"

    .line 1945
    new-instance v7, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    .line 1947
    const-class v8, Ljava/lang/String;

    .line 1950
    new-array v8, v4, [Lexpo/modules/kotlin/types/AnyType;

    .line 1951
    sget-object v9, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 1952
    new-instance v10, Lkotlin/Pair;

    const-class v11, Ljava/lang/String;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1953
    invoke-virtual {v9}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lexpo/modules/kotlin/types/AnyType;

    if-nez v9, :cond_5b

    .line 1951
    sget-object v9, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$1;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$1;

    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 1954
    new-instance v10, Lexpo/modules/kotlin/types/AnyType;

    .line 1955
    new-instance v11, Lexpo/modules/kotlin/types/LazyKType;

    const-class v12, Ljava/lang/String;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-direct {v11, v12, v4, v9}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v11, Lkotlin/reflect/KType;

    .line 1954
    invoke-direct {v10, v11}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    move-object v9, v10

    .line 1951
    :cond_5b
    aput-object v9, v8, v5

    .line 1971
    new-instance v9, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$2;

    invoke-direct {v9, p0}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$2;-><init>(Lexpo/modules/filesystem/FileSystemModule;)V

    check-cast v9, Lkotlin/jvm/functions/Function2;

    .line 1945
    invoke-direct {v7, v3, v8, v9}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    .line 1972
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1971
    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunction;

    .line 468
    move-object v0, v2

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string/jumbo v3, "uploadAsync"

    .line 1974
    new-instance v7, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    .line 1976
    const-class v8, Ljava/lang/String;

    .line 1977
    const-class v8, Ljava/lang/String;

    .line 1978
    const-class v8, Lexpo/modules/filesystem/FileSystemUploadOptions;

    .line 1981
    new-array v8, v1, [Lexpo/modules/kotlin/types/AnyType;

    .line 1982
    sget-object v9, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 1983
    new-instance v10, Lkotlin/Pair;

    const-class v11, Ljava/lang/String;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1984
    invoke-virtual {v9}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lexpo/modules/kotlin/types/AnyType;

    if-nez v9, :cond_5c

    .line 1982
    sget-object v9, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$3;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$3;

    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 1985
    new-instance v10, Lexpo/modules/kotlin/types/AnyType;

    .line 1986
    new-instance v11, Lexpo/modules/kotlin/types/LazyKType;

    const-class v12, Ljava/lang/String;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-direct {v11, v12, v5, v9}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v11, Lkotlin/reflect/KType;

    .line 1985
    invoke-direct {v10, v11}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    move-object v9, v10

    .line 1982
    :cond_5c
    aput-object v9, v8, v5

    .line 1993
    sget-object v9, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 1983
    new-instance v10, Lkotlin/Pair;

    const-class v11, Ljava/lang/String;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1984
    invoke-virtual {v9}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lexpo/modules/kotlin/types/AnyType;

    if-nez v9, :cond_5d

    .line 1993
    sget-object v9, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$4;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$4;

    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 1994
    new-instance v10, Lexpo/modules/kotlin/types/AnyType;

    .line 1995
    new-instance v11, Lexpo/modules/kotlin/types/LazyKType;

    const-class v12, Ljava/lang/String;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-direct {v11, v12, v5, v9}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v11, Lkotlin/reflect/KType;

    .line 1994
    invoke-direct {v10, v11}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    move-object v9, v10

    .line 1993
    :cond_5d
    aput-object v9, v8, v4

    .line 2002
    sget-object v9, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 1983
    new-instance v10, Lkotlin/Pair;

    const-class v11, Lexpo/modules/filesystem/FileSystemUploadOptions;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1984
    invoke-virtual {v9}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lexpo/modules/kotlin/types/AnyType;

    if-nez v9, :cond_5e

    .line 2002
    sget-object v9, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$5;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$5;

    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 2003
    new-instance v10, Lexpo/modules/kotlin/types/AnyType;

    .line 2004
    new-instance v11, Lexpo/modules/kotlin/types/LazyKType;

    const-class v12, Lexpo/modules/filesystem/FileSystemUploadOptions;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-direct {v11, v12, v5, v9}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v11, Lkotlin/reflect/KType;

    .line 2003
    invoke-direct {v10, v11}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    move-object v9, v10

    .line 2002
    :cond_5e
    aput-object v9, v8, v6

    .line 2011
    new-instance v9, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$6;

    invoke-direct {v9, p0, v2}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$6;-><init>(Lexpo/modules/filesystem/FileSystemModule;Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;)V

    check-cast v9, Lkotlin/jvm/functions/Function2;

    .line 1974
    invoke-direct {v7, v3, v8, v9}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    .line 2012
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2011
    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunction;

    .line 497
    move-object v0, v2

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string/jumbo v3, "uploadTaskStartAsync"

    .line 2014
    new-instance v7, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    .line 2016
    const-class v8, Ljava/lang/String;

    .line 2017
    const-class v8, Ljava/lang/String;

    .line 2018
    const-class v8, Ljava/lang/String;

    .line 2019
    const-class v8, Lexpo/modules/filesystem/FileSystemUploadOptions;

    const/4 v8, 0x4

    .line 2022
    new-array v9, v8, [Lexpo/modules/kotlin/types/AnyType;

    .line 2023
    sget-object v10, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 2024
    new-instance v11, Lkotlin/Pair;

    const-class v12, Ljava/lang/String;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2025
    invoke-virtual {v10}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lexpo/modules/kotlin/types/AnyType;

    if-nez v10, :cond_5f

    .line 2023
    sget-object v10, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$7;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$7;

    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 2026
    new-instance v11, Lexpo/modules/kotlin/types/AnyType;

    .line 2027
    new-instance v12, Lexpo/modules/kotlin/types/LazyKType;

    const-class v13, Ljava/lang/String;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    invoke-direct {v12, v13, v5, v10}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v12, Lkotlin/reflect/KType;

    .line 2026
    invoke-direct {v11, v12}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    move-object v10, v11

    .line 2023
    :cond_5f
    aput-object v10, v9, v5

    .line 2034
    sget-object v10, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 2024
    new-instance v11, Lkotlin/Pair;

    const-class v12, Ljava/lang/String;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2025
    invoke-virtual {v10}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lexpo/modules/kotlin/types/AnyType;

    if-nez v10, :cond_60

    .line 2034
    sget-object v10, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$8;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$8;

    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 2035
    new-instance v11, Lexpo/modules/kotlin/types/AnyType;

    .line 2036
    new-instance v12, Lexpo/modules/kotlin/types/LazyKType;

    const-class v13, Ljava/lang/String;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    invoke-direct {v12, v13, v5, v10}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v12, Lkotlin/reflect/KType;

    .line 2035
    invoke-direct {v11, v12}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    move-object v10, v11

    .line 2034
    :cond_60
    aput-object v10, v9, v4

    .line 2043
    sget-object v10, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 2024
    new-instance v11, Lkotlin/Pair;

    const-class v12, Ljava/lang/String;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2025
    invoke-virtual {v10}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lexpo/modules/kotlin/types/AnyType;

    if-nez v10, :cond_61

    .line 2043
    sget-object v10, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$9;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$9;

    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 2044
    new-instance v11, Lexpo/modules/kotlin/types/AnyType;

    .line 2045
    new-instance v12, Lexpo/modules/kotlin/types/LazyKType;

    const-class v13, Ljava/lang/String;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    invoke-direct {v12, v13, v5, v10}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v12, Lkotlin/reflect/KType;

    .line 2044
    invoke-direct {v11, v12}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    move-object v10, v11

    .line 2043
    :cond_61
    aput-object v10, v9, v6

    .line 2052
    sget-object v10, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 2024
    new-instance v11, Lkotlin/Pair;

    const-class v12, Lexpo/modules/filesystem/FileSystemUploadOptions;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2025
    invoke-virtual {v10}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lexpo/modules/kotlin/types/AnyType;

    if-nez v10, :cond_62

    .line 2052
    sget-object v10, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$10;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$10;

    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 2053
    new-instance v11, Lexpo/modules/kotlin/types/AnyType;

    .line 2054
    new-instance v12, Lexpo/modules/kotlin/types/LazyKType;

    const-class v13, Lexpo/modules/filesystem/FileSystemUploadOptions;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    invoke-direct {v12, v13, v5, v10}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v12, Lkotlin/reflect/KType;

    .line 2053
    invoke-direct {v11, v12}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    move-object v10, v11

    .line 2052
    :cond_62
    aput-object v10, v9, v1

    .line 2061
    new-instance v10, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$11;

    invoke-direct {v10, p0}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$11;-><init>(Lexpo/modules/filesystem/FileSystemModule;)V

    check-cast v10, Lkotlin/jvm/functions/Function2;

    .line 2014
    invoke-direct {v7, v3, v9, v10}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    .line 2062
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2061
    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunction;

    .line 549
    move-object v0, v2

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "downloadAsync"

    .line 2064
    new-instance v7, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    .line 2066
    const-class v9, Ljava/lang/String;

    .line 2067
    const-class v9, Ljava/lang/String;

    .line 2068
    const-class v9, Lexpo/modules/filesystem/DownloadOptions;

    .line 2071
    new-array v9, v1, [Lexpo/modules/kotlin/types/AnyType;

    .line 2072
    sget-object v10, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 2073
    new-instance v11, Lkotlin/Pair;

    const-class v12, Ljava/lang/String;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2074
    invoke-virtual {v10}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lexpo/modules/kotlin/types/AnyType;

    if-nez v10, :cond_63

    .line 2072
    sget-object v10, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$12;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$12;

    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 2075
    new-instance v11, Lexpo/modules/kotlin/types/AnyType;

    .line 2076
    new-instance v12, Lexpo/modules/kotlin/types/LazyKType;

    const-class v13, Ljava/lang/String;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    invoke-direct {v12, v13, v5, v10}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v12, Lkotlin/reflect/KType;

    .line 2075
    invoke-direct {v11, v12}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    move-object v10, v11

    .line 2072
    :cond_63
    aput-object v10, v9, v5

    .line 2083
    sget-object v10, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 2073
    new-instance v11, Lkotlin/Pair;

    const-class v12, Ljava/lang/String;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2074
    invoke-virtual {v10}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lexpo/modules/kotlin/types/AnyType;

    if-nez v10, :cond_64

    .line 2083
    sget-object v10, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$13;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$13;

    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 2084
    new-instance v11, Lexpo/modules/kotlin/types/AnyType;

    .line 2085
    new-instance v12, Lexpo/modules/kotlin/types/LazyKType;

    const-class v13, Ljava/lang/String;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    invoke-direct {v12, v13, v4, v10}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v12, Lkotlin/reflect/KType;

    .line 2084
    invoke-direct {v11, v12}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    move-object v10, v11

    .line 2083
    :cond_64
    aput-object v10, v9, v4

    .line 2092
    sget-object v10, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 2073
    new-instance v11, Lkotlin/Pair;

    const-class v12, Lexpo/modules/filesystem/DownloadOptions;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2074
    invoke-virtual {v10}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lexpo/modules/kotlin/types/AnyType;

    if-nez v10, :cond_65

    .line 2092
    sget-object v10, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$14;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$14;

    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 2093
    new-instance v11, Lexpo/modules/kotlin/types/AnyType;

    .line 2094
    new-instance v12, Lexpo/modules/kotlin/types/LazyKType;

    const-class v13, Lexpo/modules/filesystem/DownloadOptions;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    invoke-direct {v12, v13, v5, v10}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v12, Lkotlin/reflect/KType;

    .line 2093
    invoke-direct {v11, v12}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    move-object v10, v11

    .line 2092
    :cond_65
    aput-object v10, v9, v6

    .line 2101
    new-instance v10, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$15;

    invoke-direct {v10, p0}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$15;-><init>(Lexpo/modules/filesystem/FileSystemModule;)V

    check-cast v10, Lkotlin/jvm/functions/Function2;

    .line 2064
    invoke-direct {v7, v3, v9, v10}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    .line 2102
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2101
    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunction;

    .line 611
    move-object v0, v2

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "networkTaskCancelAsync"

    .line 2104
    const-class v7, Ljava/lang/String;

    const-class v9, Lexpo/modules/kotlin/Promise;

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_66

    .line 2105
    new-instance v7, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    new-array v9, v5, [Lexpo/modules/kotlin/types/AnyType;

    .line 2111
    new-instance v10, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$41;

    invoke-direct {v10, p0}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$41;-><init>(Lexpo/modules/filesystem/FileSystemModule;)V

    check-cast v10, Lkotlin/jvm/functions/Function2;

    .line 2105
    invoke-direct {v7, v3, v9, v10}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_12

    .line 2113
    :cond_66
    const-class v7, Ljava/lang/String;

    .line 2116
    new-array v7, v4, [Lexpo/modules/kotlin/types/AnyType;

    .line 2117
    sget-object v9, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 2118
    new-instance v10, Lkotlin/Pair;

    const-class v11, Ljava/lang/String;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2119
    invoke-virtual {v9}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lexpo/modules/kotlin/types/AnyType;

    if-nez v9, :cond_67

    .line 2117
    sget-object v9, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$42;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$42;

    check-cast v9, Lkotlin/jvm/functions/Function0;

    .line 2120
    new-instance v10, Lexpo/modules/kotlin/types/AnyType;

    .line 2121
    new-instance v11, Lexpo/modules/kotlin/types/LazyKType;

    const-class v12, Ljava/lang/String;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-direct {v11, v12, v5, v9}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v11, Lkotlin/reflect/KType;

    .line 2120
    invoke-direct {v10, v11}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    move-object v9, v10

    .line 2117
    :cond_67
    aput-object v9, v7, v5

    .line 2107
    new-instance v9, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$43;

    invoke-direct {v9, p0}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$43;-><init>(Lexpo/modules/filesystem/FileSystemModule;)V

    check-cast v9, Lkotlin/jvm/functions/Function1;

    .line 2138
    new-instance v10, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    invoke-direct {v10, v3, v7, v9}, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    move-object v7, v10

    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunction;

    .line 2166
    :goto_12
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    move-object v0, v2

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v3, "downloadResumableStartAsync"

    .line 2168
    new-instance v7, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    .line 2170
    const-class v9, Ljava/lang/String;

    .line 2171
    const-class v9, Ljava/lang/String;

    .line 2172
    const-class v9, Ljava/lang/String;

    .line 2173
    const-class v9, Lexpo/modules/filesystem/DownloadOptions;

    .line 2174
    const-class v9, Ljava/lang/String;

    const/4 v9, 0x5

    .line 2177
    new-array v9, v9, [Lexpo/modules/kotlin/types/AnyType;

    .line 2178
    sget-object v10, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 2179
    new-instance v11, Lkotlin/Pair;

    const-class v12, Ljava/lang/String;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2180
    invoke-virtual {v10}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lexpo/modules/kotlin/types/AnyType;

    if-nez v10, :cond_68

    .line 2178
    sget-object v10, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$16;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$16;

    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 2181
    new-instance v11, Lexpo/modules/kotlin/types/AnyType;

    .line 2182
    new-instance v12, Lexpo/modules/kotlin/types/LazyKType;

    const-class v13, Ljava/lang/String;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    invoke-direct {v12, v13, v5, v10}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v12, Lkotlin/reflect/KType;

    .line 2181
    invoke-direct {v11, v12}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    move-object v10, v11

    .line 2178
    :cond_68
    aput-object v10, v9, v5

    .line 2189
    sget-object v10, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 2179
    new-instance v11, Lkotlin/Pair;

    const-class v12, Ljava/lang/String;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2180
    invoke-virtual {v10}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lexpo/modules/kotlin/types/AnyType;

    if-nez v10, :cond_69

    .line 2189
    sget-object v10, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$17;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$17;

    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 2190
    new-instance v11, Lexpo/modules/kotlin/types/AnyType;

    .line 2191
    new-instance v12, Lexpo/modules/kotlin/types/LazyKType;

    const-class v13, Ljava/lang/String;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    invoke-direct {v12, v13, v5, v10}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v12, Lkotlin/reflect/KType;

    .line 2190
    invoke-direct {v11, v12}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    move-object v10, v11

    .line 2189
    :cond_69
    aput-object v10, v9, v4

    .line 2198
    sget-object v10, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 2179
    new-instance v11, Lkotlin/Pair;

    const-class v12, Ljava/lang/String;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2180
    invoke-virtual {v10}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lexpo/modules/kotlin/types/AnyType;

    if-nez v10, :cond_6a

    .line 2198
    sget-object v10, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$18;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$18;

    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 2199
    new-instance v11, Lexpo/modules/kotlin/types/AnyType;

    .line 2200
    new-instance v12, Lexpo/modules/kotlin/types/LazyKType;

    const-class v13, Ljava/lang/String;

    invoke-static {v13}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v13

    invoke-direct {v12, v13, v5, v10}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v12, Lkotlin/reflect/KType;

    .line 2199
    invoke-direct {v11, v12}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    move-object v10, v11

    .line 2198
    :cond_6a
    aput-object v10, v9, v6

    .line 2207
    sget-object v6, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 2179
    new-instance v10, Lkotlin/Pair;

    const-class v11, Lexpo/modules/filesystem/DownloadOptions;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2180
    invoke-virtual {v6}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/kotlin/types/AnyType;

    if-nez v6, :cond_6b

    .line 2207
    sget-object v6, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$19;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$19;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    .line 2208
    new-instance v10, Lexpo/modules/kotlin/types/AnyType;

    .line 2209
    new-instance v11, Lexpo/modules/kotlin/types/LazyKType;

    const-class v12, Lexpo/modules/filesystem/DownloadOptions;

    invoke-static {v12}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v12

    invoke-direct {v11, v12, v5, v6}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v11, Lkotlin/reflect/KType;

    .line 2208
    invoke-direct {v10, v11}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    move-object v6, v10

    .line 2207
    :cond_6b
    aput-object v6, v9, v1

    .line 2216
    sget-object v1, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 2179
    new-instance v6, Lkotlin/Pair;

    const-class v10, Ljava/lang/String;

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v10

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct {v6, v10, v11}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2180
    invoke-virtual {v1}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexpo/modules/kotlin/types/AnyType;

    if-nez v1, :cond_6c

    .line 2216
    sget-object v1, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$20;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$20;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 2217
    new-instance v6, Lexpo/modules/kotlin/types/AnyType;

    .line 2218
    new-instance v10, Lexpo/modules/kotlin/types/LazyKType;

    const-class v11, Ljava/lang/String;

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v11

    invoke-direct {v10, v11, v4, v1}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v10, Lkotlin/reflect/KType;

    .line 2217
    invoke-direct {v6, v10}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    move-object v1, v6

    .line 2216
    :cond_6c
    aput-object v1, v9, v8

    .line 2225
    new-instance v1, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$21;

    invoke-direct {v1, p0}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunctionWithPromise$21;-><init>(Lexpo/modules/filesystem/FileSystemModule;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    .line 2168
    invoke-direct {v7, v3, v9, v1}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    .line 2226
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2225
    check-cast v7, Lexpo/modules/kotlin/functions/AsyncFunction;

    .line 681
    move-object v0, v2

    check-cast v0, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;

    const-string v1, "downloadResumablePauseAsync"

    .line 2228
    const-class v3, Ljava/lang/String;

    const-class v6, Lexpo/modules/kotlin/Promise;

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 2229
    new-instance v3, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;

    new-array v4, v5, [Lexpo/modules/kotlin/types/AnyType;

    .line 2235
    new-instance v5, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$44;

    invoke-direct {v5, p0}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$44;-><init>(Lexpo/modules/filesystem/FileSystemModule;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 2229
    invoke-direct {v3, v1, v4, v5}, Lexpo/modules/kotlin/functions/AsyncFunctionWithPromiseComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function2;)V

    check-cast v3, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto/16 :goto_14

    .line 2237
    :cond_6d
    const-class v3, Ljava/lang/String;

    .line 2240
    new-array v3, v4, [Lexpo/modules/kotlin/types/AnyType;

    .line 2241
    sget-object v4, Lexpo/modules/kotlin/types/AnyTypeProvider;->INSTANCE:Lexpo/modules/kotlin/types/AnyTypeProvider;

    .line 2242
    new-instance v6, Lkotlin/Pair;

    const-class v7, Ljava/lang/String;

    invoke-static {v7}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2243
    invoke-virtual {v4}, Lexpo/modules/kotlin/types/AnyTypeProvider;->getTypesMap()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lexpo/modules/kotlin/types/AnyType;

    if-nez v4, :cond_6e

    .line 2241
    sget-object v4, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$45;->INSTANCE:Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$45;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 2244
    new-instance v6, Lexpo/modules/kotlin/types/AnyType;

    .line 2245
    new-instance v7, Lexpo/modules/kotlin/types/LazyKType;

    const-class v8, Ljava/lang/String;

    invoke-static {v8}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v8

    invoke-direct {v7, v8, v5, v4}, Lexpo/modules/kotlin/types/LazyKType;-><init>(Lkotlin/reflect/KClass;ZLkotlin/jvm/functions/Function0;)V

    check-cast v7, Lkotlin/reflect/KType;

    .line 2244
    invoke-direct {v6, v7}, Lexpo/modules/kotlin/types/AnyType;-><init>(Lkotlin/reflect/KType;)V

    move-object v4, v6

    .line 2241
    :cond_6e
    aput-object v4, v3, v5

    .line 2231
    new-instance v4, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$46;

    invoke-direct {v4, p0}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$AsyncFunction$46;-><init>(Lexpo/modules/filesystem/FileSystemModule;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 2261
    const-class v5, Landroid/os/Bundle;

    .line 2265
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6f

    .line 2271
    new-instance v5, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;

    invoke-direct {v5, v1, v3, v4}, Lexpo/modules/kotlin/functions/IntAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunction;

    :goto_13
    move-object v3, v5

    goto :goto_14

    .line 2273
    :cond_6f
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_70

    .line 2275
    new-instance v5, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;

    invoke-direct {v5, v1, v3, v4}, Lexpo/modules/kotlin/functions/BoolAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_13

    .line 2277
    :cond_70
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_71

    .line 2279
    new-instance v5, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;

    invoke-direct {v5, v1, v3, v4}, Lexpo/modules/kotlin/functions/DoubleAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_13

    .line 2281
    :cond_71
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_72

    .line 2283
    new-instance v5, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;

    invoke-direct {v5, v1, v3, v4}, Lexpo/modules/kotlin/functions/FloatAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_13

    .line 2285
    :cond_72
    const-class v6, Ljava/lang/String;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_73

    .line 2287
    new-instance v5, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;

    invoke-direct {v5, v1, v3, v4}, Lexpo/modules/kotlin/functions/StringAsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_13

    .line 2289
    :cond_73
    new-instance v5, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;

    invoke-direct {v5, v1, v3, v4}, Lexpo/modules/kotlin/functions/AsyncFunctionComponent;-><init>(Ljava/lang/String;[Lexpo/modules/kotlin/types/AnyType;Lkotlin/jvm/functions/Function1;)V

    check-cast v5, Lexpo/modules/kotlin/functions/AsyncFunction;

    goto :goto_13

    .line 2290
    :goto_14
    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionBuilder;->getAsyncFunctions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2292
    invoke-virtual {v2}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->getEventListeners()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lexpo/modules/kotlin/events/EventName;->ON_ACTIVITY_RESULT:Lexpo/modules/kotlin/events/EventName;

    .line 2293
    new-instance v3, Lexpo/modules/kotlin/events/EventListenerWithSenderAndPayload;

    sget-object v4, Lexpo/modules/kotlin/events/EventName;->ON_ACTIVITY_RESULT:Lexpo/modules/kotlin/events/EventName;

    .line 2292
    new-instance v5, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$OnActivityResult$1;

    invoke-direct {v5, p0}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$OnActivityResult$1;-><init>(Lexpo/modules/filesystem/FileSystemModule;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 2293
    invoke-direct {v3, v4, v5}, Lexpo/modules/kotlin/events/EventListenerWithSenderAndPayload;-><init>(Lexpo/modules/kotlin/events/EventName;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2295
    invoke-virtual {v2}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->getEventListeners()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lexpo/modules/kotlin/events/EventName;->MODULE_DESTROY:Lexpo/modules/kotlin/events/EventName;

    new-instance v3, Lexpo/modules/kotlin/events/BasicEventListener;

    sget-object v4, Lexpo/modules/kotlin/events/EventName;->MODULE_DESTROY:Lexpo/modules/kotlin/events/EventName;

    new-instance v5, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$OnDestroy$1;

    invoke-direct {v5, p0}, Lexpo/modules/filesystem/FileSystemModule$definition$lambda$48$$inlined$OnDestroy$1;-><init>(Lexpo/modules/filesystem/FileSystemModule;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-direct {v3, v4, v5}, Lexpo/modules/kotlin/events/BasicEventListener;-><init>(Lexpo/modules/kotlin/events/EventName;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    invoke-virtual {v2}, Lexpo/modules/kotlin/modules/ModuleDefinitionBuilder;->buildModule()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2297
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method
