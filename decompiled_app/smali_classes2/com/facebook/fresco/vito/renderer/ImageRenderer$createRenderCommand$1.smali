.class public final Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ImageRenderer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/fresco/vito/renderer/ImageRenderer;->createRenderCommand(Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;Landroid/graphics/Matrix;)Lkotlin/jvm/functions/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/graphics/Canvas;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImageRenderer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageRenderer.kt\ncom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1\n*L\n1#1,125:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0xb0
.end annotation


# instance fields
.field final synthetic $imageTransformation:Landroid/graphics/Matrix;

.field final synthetic $paint:Landroid/graphics/Paint;

.field final synthetic $shape:Lcom/facebook/fresco/vito/renderer/Shape;

.field final synthetic $this_createRenderCommand:Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;


# direct methods
.method public constructor <init>(Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;Landroid/graphics/Matrix;Lcom/facebook/fresco/vito/renderer/Shape;Landroid/graphics/Paint;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$this_createRenderCommand:Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;

    iput-object p2, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$imageTransformation:Landroid/graphics/Matrix;

    iput-object p3, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$shape:Lcom/facebook/fresco/vito/renderer/Shape;

    iput-object p4, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$paint:Landroid/graphics/Paint;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 73
    check-cast p1, Landroid/graphics/Canvas;

    invoke-virtual {p0, p1}, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->invoke(Landroid/graphics/Canvas;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/graphics/Canvas;)V
    .locals 5

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$this_createRenderCommand:Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;

    invoke-virtual {v0}, Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$this_createRenderCommand:Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;

    invoke-virtual {v0}, Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$this_createRenderCommand:Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;

    invoke-virtual {v0}, Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$this_createRenderCommand:Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;

    invoke-virtual {v1}, Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$this_createRenderCommand:Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;

    invoke-virtual {v2}, Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 76
    iget-object v0, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$imageTransformation:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$this_createRenderCommand:Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;

    invoke-virtual {v0}, Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$shape:Lcom/facebook/fresco/vito/renderer/Shape;

    check-cast v1, Lcom/facebook/fresco/vito/renderer/RectShape;

    invoke-virtual {v1}, Lcom/facebook/fresco/vito/renderer/RectShape;->getRect()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    .line 82
    iget-object v2, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$shape:Lcom/facebook/fresco/vito/renderer/Shape;

    check-cast v2, Lcom/facebook/fresco/vito/renderer/RectShape;

    invoke-virtual {v2}, Lcom/facebook/fresco/vito/renderer/RectShape;->getRect()Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    .line 83
    iget-object v3, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$shape:Lcom/facebook/fresco/vito/renderer/Shape;

    check-cast v3, Lcom/facebook/fresco/vito/renderer/RectShape;

    invoke-virtual {v3}, Lcom/facebook/fresco/vito/renderer/RectShape;->getRect()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    .line 84
    iget-object v4, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$shape:Lcom/facebook/fresco/vito/renderer/Shape;

    check-cast v4, Lcom/facebook/fresco/vito/renderer/RectShape;

    invoke-virtual {v4}, Lcom/facebook/fresco/vito/renderer/RectShape;->getRect()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    .line 80
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 86
    :goto_0
    iget-object v0, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$this_createRenderCommand:Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;

    invoke-virtual {v0}, Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 87
    iget-object v0, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$this_createRenderCommand:Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;

    invoke-virtual {v0}, Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 88
    iget-object v0, p0, Lcom/facebook/fresco/vito/renderer/ImageRenderer$createRenderCommand$1;->$this_createRenderCommand:Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;

    invoke-virtual {v0}, Lcom/facebook/fresco/vito/renderer/DrawableImageDataModel;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method
