.class public final Lcom/facebook/react/uimanager/YogaNodePool;
.super Ljava/lang/Object;
.source "YogaNodePool.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u0007R!\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/facebook/react/uimanager/YogaNodePool;",
        "",
        "()V",
        "pool",
        "Lcom/facebook/react/common/ClearableSynchronizedPool;",
        "Lcom/facebook/yoga/YogaNode;",
        "getPool",
        "()Lcom/facebook/react/common/ClearableSynchronizedPool;",
        "pool$delegate",
        "Lkotlin/Lazy;",
        "get",
        "ReactAndroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/facebook/react/uimanager/YogaNodePool;

.field private static final pool$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/react/uimanager/YogaNodePool;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/YogaNodePool;-><init>()V

    sput-object v0, Lcom/facebook/react/uimanager/YogaNodePool;->INSTANCE:Lcom/facebook/react/uimanager/YogaNodePool;

    .line 17
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/facebook/react/uimanager/YogaNodePool$pool$2;->INSTANCE:Lcom/facebook/react/uimanager/YogaNodePool$pool$2;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/facebook/react/uimanager/YogaNodePool;->pool$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final get()Lcom/facebook/react/common/ClearableSynchronizedPool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/react/common/ClearableSynchronizedPool<",
            "Lcom/facebook/yoga/YogaNode;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 19
    sget-object v0, Lcom/facebook/react/uimanager/YogaNodePool;->INSTANCE:Lcom/facebook/react/uimanager/YogaNodePool;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/YogaNodePool;->getPool()Lcom/facebook/react/common/ClearableSynchronizedPool;

    move-result-object v0

    return-object v0
.end method

.method private final getPool()Lcom/facebook/react/common/ClearableSynchronizedPool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/react/common/ClearableSynchronizedPool<",
            "Lcom/facebook/yoga/YogaNode;",
            ">;"
        }
    .end annotation

    .line 16
    sget-object v0, Lcom/facebook/react/uimanager/YogaNodePool;->pool$delegate:Lkotlin/Lazy;

    .line 17
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/common/ClearableSynchronizedPool;

    return-object v0
.end method
