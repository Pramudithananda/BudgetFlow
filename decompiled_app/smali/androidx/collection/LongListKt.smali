.class public final Landroidx/collection/LongListKt;
.super Ljava/lang/Object;
.source "LongList.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLongList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LongList.kt\nandroidx/collection/LongListKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 LongList.kt\nandroidx/collection/MutableLongList\n*L\n1#1,958:1\n1#2:959\n704#3,2:960\n704#3,2:962\n704#3,2:964\n704#3,2:966\n704#3,2:968\n704#3,2:970\n*S KotlinDebug\n*F\n+ 1 LongList.kt\nandroidx/collection/LongListKt\n*L\n927#1:960,2\n936#1:962,2\n937#1:964,2\n947#1:966,2\n948#1:968,2\n949#1:970,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0016\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0006\u0010\u0002\u001a\u00020\u0001\u001a\u0006\u0010\u0003\u001a\u00020\u0001\u001a\u000e\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0005\u001a\u0016\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005\u001a\u001e\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005\u001a\u0012\u0010\u0003\u001a\u00020\u00012\n\u0010\u0008\u001a\u00020\t\"\u00020\u0005\u001a\t\u0010\n\u001a\u00020\u000bH\u0086\u0008\u001a\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u0005\u001a\u0016\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005\u001a\u001e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005\u001a\u0015\u0010\n\u001a\u00020\u000b2\n\u0010\u0008\u001a\u00020\t\"\u00020\u0005H\u0086\u0008\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "EmptyLongList",
        "Landroidx/collection/LongList;",
        "emptyLongList",
        "longListOf",
        "element1",
        "",
        "element2",
        "element3",
        "elements",
        "",
        "mutableLongListOf",
        "Landroidx/collection/MutableLongList;",
        "collection"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final EmptyLongList:Landroidx/collection/LongList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 881
    new-instance v0, Landroidx/collection/MutableLongList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/collection/MutableLongList;-><init>(I)V

    check-cast v0, Landroidx/collection/LongList;

    sput-object v0, Landroidx/collection/LongListKt;->EmptyLongList:Landroidx/collection/LongList;

    return-void
.end method

.method public static final emptyLongList()Landroidx/collection/LongList;
    .locals 1

    .line 886
    sget-object v0, Landroidx/collection/LongListKt;->EmptyLongList:Landroidx/collection/LongList;

    return-object v0
.end method

.method public static final longListOf()Landroidx/collection/LongList;
    .locals 1

    .line 891
    sget-object v0, Landroidx/collection/LongListKt;->EmptyLongList:Landroidx/collection/LongList;

    return-object v0
.end method

.method public static final longListOf(J)Landroidx/collection/LongList;
    .locals 0

    .line 896
    invoke-static {p0, p1}, Landroidx/collection/LongListKt;->mutableLongListOf(J)Landroidx/collection/MutableLongList;

    move-result-object p0

    check-cast p0, Landroidx/collection/LongList;

    return-object p0
.end method

.method public static final longListOf(JJ)Landroidx/collection/LongList;
    .locals 0

    .line 902
    invoke-static {p0, p1, p2, p3}, Landroidx/collection/LongListKt;->mutableLongListOf(JJ)Landroidx/collection/MutableLongList;

    move-result-object p0

    check-cast p0, Landroidx/collection/LongList;

    return-object p0
.end method

.method public static final longListOf(JJJ)Landroidx/collection/LongList;
    .locals 0

    .line 909
    invoke-static/range {p0 .. p5}, Landroidx/collection/LongListKt;->mutableLongListOf(JJJ)Landroidx/collection/MutableLongList;

    move-result-object p0

    check-cast p0, Landroidx/collection/LongList;

    return-object p0
.end method

.method public static final varargs longListOf([J)Landroidx/collection/LongList;
    .locals 2

    const-string v0, "elements"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 915
    new-instance v0, Landroidx/collection/MutableLongList;

    array-length v1, p0

    invoke-direct {v0, v1}, Landroidx/collection/MutableLongList;-><init>(I)V

    invoke-virtual {v0, p0}, Landroidx/collection/MutableLongList;->plusAssign([J)V

    check-cast v0, Landroidx/collection/LongList;

    return-object v0
.end method

.method public static final mutableLongListOf()Landroidx/collection/MutableLongList;
    .locals 4

    .line 920
    new-instance v0, Landroidx/collection/MutableLongList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/collection/MutableLongList;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final mutableLongListOf(J)Landroidx/collection/MutableLongList;
    .locals 2

    .line 926
    new-instance v0, Landroidx/collection/MutableLongList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/collection/MutableLongList;-><init>(I)V

    .line 960
    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableLongList;->add(J)Z

    return-object v0
.end method

.method public static final mutableLongListOf(JJ)Landroidx/collection/MutableLongList;
    .locals 2

    .line 935
    new-instance v0, Landroidx/collection/MutableLongList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/collection/MutableLongList;-><init>(I)V

    .line 962
    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableLongList;->add(J)Z

    .line 964
    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableLongList;->add(J)Z

    return-object v0
.end method

.method public static final mutableLongListOf(JJJ)Landroidx/collection/MutableLongList;
    .locals 2

    .line 946
    new-instance v0, Landroidx/collection/MutableLongList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/collection/MutableLongList;-><init>(I)V

    .line 966
    invoke-virtual {v0, p0, p1}, Landroidx/collection/MutableLongList;->add(J)Z

    .line 968
    invoke-virtual {v0, p2, p3}, Landroidx/collection/MutableLongList;->add(J)Z

    .line 970
    invoke-virtual {v0, p4, p5}, Landroidx/collection/MutableLongList;->add(J)Z

    return-object v0
.end method

.method public static final varargs mutableLongListOf([J)Landroidx/collection/MutableLongList;
    .locals 2

    const-string v0, "elements"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 957
    new-instance v0, Landroidx/collection/MutableLongList;

    array-length v1, p0

    invoke-direct {v0, v1}, Landroidx/collection/MutableLongList;-><init>(I)V

    invoke-virtual {v0, p0}, Landroidx/collection/MutableLongList;->plusAssign([J)V

    return-object v0
.end method
