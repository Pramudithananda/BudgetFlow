.class public final Lcom/facebook/react/modules/i18nmanager/I18nUtil$Companion;
.super Ljava/lang/Object;
.source "I18nUtil.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/modules/i18nmanager/I18nUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\r\u0010\n\u001a\u00020\tH\u0007\u00a2\u0006\u0002\u0008\u000cR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0008\u001a\u00020\t8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/facebook/react/modules/i18nmanager/I18nUtil$Companion;",
        "",
        "()V",
        "KEY_FOR_PERFS_MAKE_RTL_FLIP_LEFT_AND_RIGHT_STYLES",
        "",
        "KEY_FOR_PREFS_ALLOWRTL",
        "KEY_FOR_PREFS_FORCERTL",
        "SHARED_PREFS_NAME",
        "instance",
        "Lcom/facebook/react/modules/i18nmanager/I18nUtil;",
        "getInstance",
        "()Lcom/facebook/react/modules/i18nmanager/I18nUtil;",
        "DEPRECATED$getInstance",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/react/modules/i18nmanager/I18nUtil$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final DEPRECATED$getInstance()Lcom/facebook/react/modules/i18nmanager/I18nUtil;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "Use .instance instead, this API is only for backward compat"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "instance"
            imports = {}
        .end subannotation
    .end annotation

    .line 100
    invoke-virtual {p0}, Lcom/facebook/react/modules/i18nmanager/I18nUtil$Companion;->getInstance()Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    move-result-object v0

    return-object v0
.end method

.method public final getInstance()Lcom/facebook/react/modules/i18nmanager/I18nUtil;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 83
    invoke-static {}, Lcom/facebook/react/modules/i18nmanager/I18nUtil;->access$getInstance$cp()Lcom/facebook/react/modules/i18nmanager/I18nUtil;

    move-result-object v0

    return-object v0
.end method
