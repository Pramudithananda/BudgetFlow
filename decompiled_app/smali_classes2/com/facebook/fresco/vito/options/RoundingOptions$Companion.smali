.class public final Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;
.super Ljava/lang/Object;
.source "RoundingOptions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/vito/options/RoundingOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0014\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000b\u001a\u00020\u0004H\u0007J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\rH\u0007J\u0018\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rH\u0007J(\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\nH\u0007J\u001a\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u000c\u001a\u00020\rH\u0007J\u0010\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\nH\u0007R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006R\u000e\u0010\t\u001a\u00020\nX\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;",
        "",
        "()V",
        "AS_CIRCLE",
        "Lcom/facebook/fresco/vito/options/RoundingOptions;",
        "getAS_CIRCLE",
        "()Lcom/facebook/fresco/vito/options/RoundingOptions;",
        "AS_CIRCLE_ANTI_ALIASING",
        "getAS_CIRCLE_ANTI_ALIASING",
        "CORNER_RADIUS_UNSET",
        "",
        "asCircle",
        "antiAliasing",
        "",
        "forceRoundAtDecode",
        "forCornerRadii",
        "topLeft",
        "topRight",
        "bottomRight",
        "bottomLeft",
        "cornerRadii",
        "",
        "forCornerRadiusPx",
        "cornerRadiusPx",
        "options_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;-><init>()V

    return-void
.end method

.method public static synthetic forCornerRadii$default(Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;[FZILjava/lang/Object;)Lcom/facebook/fresco/vito/options/RoundingOptions;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 94
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;->forCornerRadii([FZ)Lcom/facebook/fresco/vito/options/RoundingOptions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final asCircle()Lcom/facebook/fresco/vito/options/RoundingOptions;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 56
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;->getAS_CIRCLE()Lcom/facebook/fresco/vito/options/RoundingOptions;

    move-result-object v0

    return-object v0
.end method

.method public final asCircle(Z)Lcom/facebook/fresco/vito/options/RoundingOptions;
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p1, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;->getAS_CIRCLE_ANTI_ALIASING()Lcom/facebook/fresco/vito/options/RoundingOptions;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;->getAS_CIRCLE()Lcom/facebook/fresco/vito/options/RoundingOptions;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final asCircle(ZZ)Lcom/facebook/fresco/vito/options/RoundingOptions;
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 64
    new-instance v6, Lcom/facebook/fresco/vito/options/RoundingOptions;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    move-object v0, v6

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/fresco/vito/options/RoundingOptions;-><init>(ZF[FZZ)V

    return-object v6
.end method

.method public final forCornerRadii(FFFF)Lcom/facebook/fresco/vito/options/RoundingOptions;
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 77
    new-instance v6, Lcom/facebook/fresco/vito/options/RoundingOptions;

    const/16 v0, 0x8

    .line 88
    new-array v3, v0, [F

    const/4 v0, 0x0

    aput p1, v3, v0

    const/4 v0, 0x1

    aput p1, v3, v0

    const/4 p1, 0x2

    aput p2, v3, p1

    const/4 p1, 0x3

    aput p2, v3, p1

    const/4 p1, 0x4

    aput p3, v3, p1

    const/4 p1, 0x5

    aput p3, v3, p1

    const/4 p1, 0x6

    aput p4, v3, p1

    const/4 p1, 0x7

    aput p4, v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, v6

    .line 77
    invoke-direct/range {v0 .. v5}, Lcom/facebook/fresco/vito/options/RoundingOptions;-><init>(ZF[FZZ)V

    return-object v6
.end method

.method public final forCornerRadii([F)Lcom/facebook/fresco/vito/options/RoundingOptions;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "cornerRadii"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;->forCornerRadii$default(Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;[FZILjava/lang/Object;)Lcom/facebook/fresco/vito/options/RoundingOptions;

    move-result-object p1

    return-object p1
.end method

.method public final forCornerRadii([FZ)Lcom/facebook/fresco/vito/options/RoundingOptions;
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "cornerRadii"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    new-instance v0, Lcom/facebook/fresco/vito/options/RoundingOptions;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v1, v0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/facebook/fresco/vito/options/RoundingOptions;-><init>(ZF[FZZ)V

    return-object v0
.end method

.method public final forCornerRadiusPx(F)Lcom/facebook/fresco/vito/options/RoundingOptions;
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 68
    new-instance v6, Lcom/facebook/fresco/vito/options/RoundingOptions;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/fresco/vito/options/RoundingOptions;-><init>(ZF[FZZ)V

    return-object v6
.end method

.method public final getAS_CIRCLE()Lcom/facebook/fresco/vito/options/RoundingOptions;
    .locals 1

    .line 52
    invoke-static {}, Lcom/facebook/fresco/vito/options/RoundingOptions;->access$getAS_CIRCLE$cp()Lcom/facebook/fresco/vito/options/RoundingOptions;

    move-result-object v0

    return-object v0
.end method

.method public final getAS_CIRCLE_ANTI_ALIASING()Lcom/facebook/fresco/vito/options/RoundingOptions;
    .locals 1

    .line 53
    invoke-static {}, Lcom/facebook/fresco/vito/options/RoundingOptions;->access$getAS_CIRCLE_ANTI_ALIASING$cp()Lcom/facebook/fresco/vito/options/RoundingOptions;

    move-result-object v0

    return-object v0
.end method
