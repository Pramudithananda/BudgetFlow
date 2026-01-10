.class final Lcom/facebook/react/uimanager/ReactYogaConfigProvider$yogaConfig$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ReactYogaConfigProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/uimanager/ReactYogaConfigProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/facebook/yoga/YogaConfig;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Lcom/facebook/yoga/YogaConfig;",
        "kotlin.jvm.PlatformType",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/facebook/react/uimanager/ReactYogaConfigProvider$yogaConfig$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/react/uimanager/ReactYogaConfigProvider$yogaConfig$2;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/ReactYogaConfigProvider$yogaConfig$2;-><init>()V

    sput-object v0, Lcom/facebook/react/uimanager/ReactYogaConfigProvider$yogaConfig$2;->INSTANCE:Lcom/facebook/react/uimanager/ReactYogaConfigProvider$yogaConfig$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/facebook/yoga/YogaConfig;
    .locals 2

    .line 18
    invoke-static {}, Lcom/facebook/yoga/YogaConfigFactory;->create()Lcom/facebook/yoga/YogaConfig;

    move-result-object v0

    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Lcom/facebook/yoga/YogaConfig;->setPointScaleFactor(F)V

    .line 20
    sget-object v1, Lcom/facebook/yoga/YogaErrata;->ALL:Lcom/facebook/yoga/YogaErrata;

    invoke-virtual {v0, v1}, Lcom/facebook/yoga/YogaConfig;->setErrata(Lcom/facebook/yoga/YogaErrata;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/facebook/react/uimanager/ReactYogaConfigProvider$yogaConfig$2;->invoke()Lcom/facebook/yoga/YogaConfig;

    move-result-object v0

    return-object v0
.end method
