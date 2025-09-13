.class public final Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;
.super Lcom/facebook/fresco/vito/renderer/ImageDataModel;
.source "ImageDataModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u00020\nX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u00020\nX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\nX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000c\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;",
        "Lcom/facebook/fresco/vito/renderer/ImageDataModel;",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "isBitmapCircular",
        "",
        "(Landroid/graphics/Bitmap;Z)V",
        "getBitmap",
        "()Landroid/graphics/Bitmap;",
        "defaultPaintFlags",
        "",
        "getDefaultPaintFlags",
        "()I",
        "height",
        "getHeight",
        "()Z",
        "width",
        "getWidth",
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
.field private final bitmap:Landroid/graphics/Bitmap;

.field private final defaultPaintFlags:I

.field private final height:I

.field private final isBitmapCircular:Z

.field private final width:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Z)V
    .locals 1

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, v0}, Lcom/facebook/fresco/vito/renderer/ImageDataModel;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 30
    iput-object p1, p0, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->bitmap:Landroid/graphics/Bitmap;

    iput-boolean p2, p0, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->isBitmapCircular:Z

    .line 32
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    iput p2, p0, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->width:I

    .line 33
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->height:I

    const/4 p1, 0x6

    .line 34
    iput p1, p0, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->defaultPaintFlags:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/graphics/Bitmap;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 30
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;-><init>(Landroid/graphics/Bitmap;Z)V

    return-void
.end method


# virtual methods
.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDefaultPaintFlags()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->defaultPaintFlags:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->width:I

    return v0
.end method

.method public final isBitmapCircular()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/renderer/BitmapImageDataModel;->isBitmapCircular:Z

    return v0
.end method
