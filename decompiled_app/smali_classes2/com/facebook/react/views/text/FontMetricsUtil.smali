.class public Lcom/facebook/react/views/text/FontMetricsUtil;
.super Ljava/lang/Object;
.source "FontMetricsUtil.java"


# static fields
.field private static final AMPLIFICATION_FACTOR:F = 100.0f

.field private static final CAP_HEIGHT_MEASUREMENT_TEXT:Ljava/lang/String; = "T"

.field private static final X_HEIGHT_MEASUREMENT_TEXT:Ljava/lang/String; = "x"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFontMetrics(Ljava/lang/CharSequence;Landroid/text/Layout;Landroid/text/TextPaint;Landroid/content/Context;)Lcom/facebook/react/bridge/WritableArray;
    .locals 12

    .line 27
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    .line 28
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createArray()Lcom/facebook/react/bridge/WritableArray;

    move-result-object v0

    .line 34
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1, p2}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 35
    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result p2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr p2, v2

    invoke-virtual {v1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 36
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 38
    const-string v3, "T"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    .line 37
    invoke-virtual {v1, v3, v5, v4, p2}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 39
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v2

    iget v3, p3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p2, v3

    float-to-double v3, p2

    .line 40
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 42
    const-string/jumbo v6, "x"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    .line 41
    invoke-virtual {v1, v6, v5, v7, p2}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 43
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v2

    iget v1, p3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p2, v1

    float-to-double v1, p2

    .line 44
    :goto_0
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result p2

    if-ge v5, p2, :cond_1

    .line 45
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_0

    invoke-virtual {p1, v5}, Landroid/text/Layout;->getLineEnd(I)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    const/16 v7, 0xa

    if-ne p2, v7, :cond_0

    .line 46
    invoke-virtual {p1, v5}, Landroid/text/Layout;->getLineMax(I)F

    move-result p2

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v5}, Landroid/text/Layout;->getLineWidth(I)F

    move-result p2

    .line 47
    :goto_1
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 48
    invoke-virtual {p1, v5, v7}, Landroid/text/Layout;->getLineBounds(ILandroid/graphics/Rect;)I

    .line 49
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v8

    .line 50
    invoke-virtual {p1, v5}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v9

    iget v10, p3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v9, v10

    float-to-double v9, v9

    invoke-interface {v8, v6, v9, v10}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 51
    iget v9, v7, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    iget v10, p3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v9, v10

    float-to-double v9, v9

    const-string/jumbo v11, "y"

    invoke-interface {v8, v11, v9, v10}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 52
    iget v9, p3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p2, v9

    float-to-double v9, p2

    const-string/jumbo p2, "width"

    invoke-interface {v8, p2, v9, v10}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 53
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    iget v7, p3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p2, v7

    float-to-double v9, p2

    const-string p2, "height"

    invoke-interface {v8, p2, v9, v10}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 54
    invoke-virtual {p1, v5}, Landroid/text/Layout;->getLineDescent(I)I

    move-result p2

    int-to-float p2, p2

    iget v7, p3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p2, v7

    float-to-double v9, p2

    const-string p2, "descender"

    invoke-interface {v8, p2, v9, v10}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 55
    invoke-virtual {p1, v5}, Landroid/text/Layout;->getLineAscent(I)I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    iget v7, p3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p2, v7

    float-to-double v9, p2

    const-string p2, "ascender"

    invoke-interface {v8, p2, v9, v10}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 56
    invoke-virtual {p1, v5}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result p2

    int-to-float p2, p2

    iget v7, p3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p2, v7

    float-to-double v9, p2

    const-string p2, "baseline"

    invoke-interface {v8, p2, v9, v10}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 57
    const-string p2, "capHeight"

    invoke-interface {v8, p2, v3, v4}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 58
    const-string/jumbo p2, "xHeight"

    invoke-interface {v8, p2, v1, v2}, Lcom/facebook/react/bridge/WritableMap;->putDouble(Ljava/lang/String;D)V

    .line 60
    invoke-virtual {p1, v5}, Landroid/text/Layout;->getLineStart(I)I

    move-result p2

    invoke-virtual {p1, v5}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v7

    invoke-interface {p0, p2, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 59
    const-string v7, "text"

    invoke-interface {v8, v7, p2}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-interface {v0, v8}, Lcom/facebook/react/bridge/WritableArray;->pushMap(Lcom/facebook/react/bridge/ReadableMap;)V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_1
    return-object v0
.end method
