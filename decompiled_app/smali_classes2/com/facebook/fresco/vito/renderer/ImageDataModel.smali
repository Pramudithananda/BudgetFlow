.class public abstract Lcom/facebook/fresco/vito/renderer/ImageDataModel;
.super Ljava/lang/Object;
.source "ImageDataModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001B\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u000cH\u0016J\u0012\u0010\u000e\u001a\u00020\u000c2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006R\u0014\u0010\t\u001a\u00020\u0004X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0006\u0082\u0001\u0003\u0011\u0012\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/facebook/fresco/vito/renderer/ImageDataModel;",
        "",
        "()V",
        "defaultPaintFlags",
        "",
        "getDefaultPaintFlags",
        "()I",
        "height",
        "getHeight",
        "width",
        "getWidth",
        "onAttach",
        "",
        "onDetach",
        "setCallback",
        "callback",
        "Landroid/graphics/drawable/Drawable$Callback;",
        "Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;",
        "Lcom/facebook/fresco/vito/renderer/ColorIntImageDataModel;",
        "Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;",
        "renderer_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final defaultPaintFlags:I

.field private final height:I

.field private final width:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 17
    iput v0, p0, Lcom/facebook/fresco/vito/renderer/ImageDataModel;->width:I

    .line 18
    iput v0, p0, Lcom/facebook/fresco/vito/renderer/ImageDataModel;->height:I

    const/4 v0, 0x1

    .line 19
    iput v0, p0, Lcom/facebook/fresco/vito/renderer/ImageDataModel;->defaultPaintFlags:I

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/fresco/vito/renderer/ImageDataModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultPaintFlags()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/facebook/fresco/vito/renderer/ImageDataModel;->defaultPaintFlags:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/facebook/fresco/vito/renderer/ImageDataModel;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/facebook/fresco/vito/renderer/ImageDataModel;->width:I

    return v0
.end method

.method public onAttach()V
    .locals 0

    return-void
.end method

.method public onDetach()V
    .locals 0

    return-void
.end method

.method public setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 0

    return-void
.end method
