.class public final Lcom/facebook/react/uimanager/ReactYogaConfigProvider;
.super Ljava/lang/Object;
.source "ReactYogaConfigProvider.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\t\u001a\u00020\u0004H\u0007R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/facebook/react/uimanager/ReactYogaConfigProvider;",
        "",
        "()V",
        "yogaConfig",
        "Lcom/facebook/yoga/YogaConfig;",
        "getYogaConfig",
        "()Lcom/facebook/yoga/YogaConfig;",
        "yogaConfig$delegate",
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
.field public static final INSTANCE:Lcom/facebook/react/uimanager/ReactYogaConfigProvider;

.field private static final yogaConfig$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/react/uimanager/ReactYogaConfigProvider;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/ReactYogaConfigProvider;-><init>()V

    sput-object v0, Lcom/facebook/react/uimanager/ReactYogaConfigProvider;->INSTANCE:Lcom/facebook/react/uimanager/ReactYogaConfigProvider;

    .line 17
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/facebook/react/uimanager/ReactYogaConfigProvider$yogaConfig$2;->INSTANCE:Lcom/facebook/react/uimanager/ReactYogaConfigProvider$yogaConfig$2;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/facebook/react/uimanager/ReactYogaConfigProvider;->yogaConfig$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final get()Lcom/facebook/yoga/YogaConfig;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 26
    sget-object v0, Lcom/facebook/react/uimanager/ReactYogaConfigProvider;->INSTANCE:Lcom/facebook/react/uimanager/ReactYogaConfigProvider;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/ReactYogaConfigProvider;->getYogaConfig()Lcom/facebook/yoga/YogaConfig;

    move-result-object v0

    return-object v0
.end method

.method private final getYogaConfig()Lcom/facebook/yoga/YogaConfig;
    .locals 2

    .line 16
    sget-object v0, Lcom/facebook/react/uimanager/ReactYogaConfigProvider;->yogaConfig$delegate:Lkotlin/Lazy;

    .line 17
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/facebook/yoga/YogaConfig;

    return-object v0
.end method
