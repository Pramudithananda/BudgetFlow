.class public final Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper$Companion;
.super Ljava/lang/Object;
.source "ResourceDrawableIdHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\r\u0010\u0008\u001a\u00020\u0006H\u0007\u00a2\u0006\u0002\u0008\u000bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u00020\u00068FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0007\u0010\u0002\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper$Companion;",
        "",
        "()V",
        "LOCAL_RESOURCE_SCHEME",
        "",
        "instance",
        "Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;",
        "getInstance$annotations",
        "getInstance",
        "()Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;",
        "resourceDrawableIdHelper",
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

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getInstance$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method


# virtual methods
.method public final DEPRECATED$getInstance()Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "Use .instance instead, this API is for backward compat"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "instance"
            imports = {}
        .end subannotation
    .end annotation

    .line 114
    invoke-virtual {p0}, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper$Companion;->getInstance()Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;

    move-result-object v0

    return-object v0
.end method

.method public final getInstance()Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;
    .locals 1

    .line 104
    invoke-static {}, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;->access$getResourceDrawableIdHelper$cp()Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;

    move-result-object v0

    return-object v0
.end method
