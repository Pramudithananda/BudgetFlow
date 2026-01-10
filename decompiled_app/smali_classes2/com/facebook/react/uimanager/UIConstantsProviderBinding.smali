.class public final Lcom/facebook/react/uimanager/UIConstantsProviderBinding;
.super Ljava/lang/Object;
.source "UIConstantsProviderBinding.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/uimanager/UIConstantsProviderBinding$ConstantsForViewManagerProvider;,
        Lcom/facebook/react/uimanager/UIConstantsProviderBinding$ConstantsProvider;,
        Lcom/facebook/react/uimanager/UIConstantsProviderBinding$DefaultEventTypesProvider;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c1\u0002\u0018\u00002\u00020\u0001:\u0003\r\u000e\u000fB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J)\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0087 \u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/facebook/react/uimanager/UIConstantsProviderBinding;",
        "",
        "()V",
        "install",
        "",
        "runtimeExecutor",
        "Lcom/facebook/react/bridge/RuntimeExecutor;",
        "defaultEventTypesProvider",
        "Lcom/facebook/react/uimanager/UIConstantsProviderBinding$DefaultEventTypesProvider;",
        "viewManagerConstantsProvider",
        "Lcom/facebook/react/uimanager/UIConstantsProviderBinding$ConstantsForViewManagerProvider;",
        "constantsProvider",
        "Lcom/facebook/react/uimanager/UIConstantsProviderBinding$ConstantsProvider;",
        "ConstantsForViewManagerProvider",
        "ConstantsProvider",
        "DefaultEventTypesProvider",
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
.field public static final INSTANCE:Lcom/facebook/react/uimanager/UIConstantsProviderBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/react/uimanager/UIConstantsProviderBinding;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/UIConstantsProviderBinding;-><init>()V

    sput-object v0, Lcom/facebook/react/uimanager/UIConstantsProviderBinding;->INSTANCE:Lcom/facebook/react/uimanager/UIConstantsProviderBinding;

    .line 19
    const-string v0, "uimanagerjni"

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native install(Lcom/facebook/react/bridge/RuntimeExecutor;Lcom/facebook/react/uimanager/UIConstantsProviderBinding$DefaultEventTypesProvider;Lcom/facebook/react/uimanager/UIConstantsProviderBinding$ConstantsForViewManagerProvider;Lcom/facebook/react/uimanager/UIConstantsProviderBinding$ConstantsProvider;)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method
