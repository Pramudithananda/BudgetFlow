.class public final Lcom/facebook/react/uimanager/ComponentNameResolverBinding;
.super Ljava/lang/Object;
.source "ComponentNameResolverBinding.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0019\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0001H\u0087 \u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/facebook/react/uimanager/ComponentNameResolverBinding;",
        "",
        "()V",
        "install",
        "",
        "runtimeExecutor",
        "Lcom/facebook/react/bridge/RuntimeExecutor;",
        "componentNameResolver",
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
.field public static final INSTANCE:Lcom/facebook/react/uimanager/ComponentNameResolverBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/react/uimanager/ComponentNameResolverBinding;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/ComponentNameResolverBinding;-><init>()V

    sput-object v0, Lcom/facebook/react/uimanager/ComponentNameResolverBinding;->INSTANCE:Lcom/facebook/react/uimanager/ComponentNameResolverBinding;

    .line 18
    const-string v0, "uimanagerjni"

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native install(Lcom/facebook/react/bridge/RuntimeExecutor;Ljava/lang/Object;)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method
