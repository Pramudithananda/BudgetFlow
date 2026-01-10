.class public Lcom/facebook/react/views/text/TextAttributeProps;
.super Ljava/lang/Object;
.source "TextAttributeProps.java"


# static fields
.field private static final DEFAULT_BREAK_STRATEGY:I = 0x1

.field private static final DEFAULT_HYPHENATION_FREQUENCY:I = 0x0

.field private static final DEFAULT_JUSTIFICATION_MODE:I

.field private static final DEFAULT_TEXT_SHADOW_COLOR:I = 0x55000000

.field private static final PROP_SHADOW_COLOR:Ljava/lang/String; = "textShadowColor"

.field private static final PROP_SHADOW_OFFSET:Ljava/lang/String; = "textShadowOffset"

.field private static final PROP_SHADOW_OFFSET_HEIGHT:Ljava/lang/String; = "height"

.field private static final PROP_SHADOW_OFFSET_WIDTH:Ljava/lang/String; = "width"

.field private static final PROP_SHADOW_RADIUS:Ljava/lang/String; = "textShadowRadius"

.field private static final PROP_TEXT_TRANSFORM:Ljava/lang/String; = "textTransform"

.field public static final TA_KEY_ACCESSIBILITY_ROLE:S = 0x18s

.field public static final TA_KEY_ALIGNMENT:S = 0xcs

.field public static final TA_KEY_ALLOW_FONT_SCALING:S = 0x9s

.field public static final TA_KEY_BACKGROUND_COLOR:S = 0x1s

.field public static final TA_KEY_BEST_WRITING_DIRECTION:S = 0xds

.field public static final TA_KEY_FONT_FAMILY:S = 0x3s

.field public static final TA_KEY_FONT_SIZE:S = 0x4s

.field public static final TA_KEY_FONT_SIZE_MULTIPLIER:S = 0x5s

.field public static final TA_KEY_FONT_STYLE:S = 0x7s

.field public static final TA_KEY_FONT_VARIANT:S = 0x8s

.field public static final TA_KEY_FONT_WEIGHT:S = 0x6s

.field public static final TA_KEY_FOREGROUND_COLOR:S = 0x0s

.field public static final TA_KEY_IS_HIGHLIGHTED:S = 0x16s

.field public static final TA_KEY_LAYOUT_DIRECTION:S = 0x17s

.field public static final TA_KEY_LETTER_SPACING:S = 0xas

.field public static final TA_KEY_LINE_BREAK_STRATEGY:S = 0x19s

.field public static final TA_KEY_LINE_HEIGHT:S = 0xbs

.field public static final TA_KEY_MAX_FONT_SIZE_MULTIPLIER:S = 0x1ds

.field public static final TA_KEY_OPACITY:S = 0x2s

.field public static final TA_KEY_ROLE:S = 0x1as

.field public static final TA_KEY_TEXT_DECORATION_COLOR:S = 0xes

.field public static final TA_KEY_TEXT_DECORATION_LINE:S = 0xfs

.field public static final TA_KEY_TEXT_DECORATION_STYLE:S = 0x10s

.field public static final TA_KEY_TEXT_SHADOW_COLOR:S = 0x13s

.field public static final TA_KEY_TEXT_SHADOW_OFFSET_DX:S = 0x14s

.field public static final TA_KEY_TEXT_SHADOW_OFFSET_DY:S = 0x15s

.field public static final TA_KEY_TEXT_SHADOW_RADIUS:S = 0x12s

.field public static final TA_KEY_TEXT_TRANSFORM:S = 0x1bs

.field public static final UNSET:I = -0x1


# instance fields
.field protected mAccessibilityRole:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

.field protected mAllowFontScaling:Z

.field protected mBackgroundColor:I

.field protected mColor:I

.field protected mContainsImages:Z

.field protected mFontFamily:Ljava/lang/String;

.field protected mFontFeatureSettings:Ljava/lang/String;

.field protected mFontSize:I

.field protected mFontSizeInput:F

.field protected mFontStyle:I

.field protected mFontWeight:I

.field protected mHeightOfTallestInlineImage:F

.field protected mIncludeFontPadding:Z

.field protected mIsBackgroundColorSet:Z

.field protected mIsColorSet:Z

.field protected mIsLineThroughTextDecorationSet:Z

.field protected mIsUnderlineTextDecorationSet:Z

.field protected mLayoutDirection:I

.field protected mLetterSpacingInput:F

.field protected mLineHeight:F

.field protected mLineHeightInput:F

.field protected mMaxFontSizeMultiplier:F

.field protected mNumberOfLines:I

.field protected mOpacity:F

.field protected mRole:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$Role;

.field protected mTextAlign:I

.field protected mTextShadowColor:I

.field protected mTextShadowOffsetDx:F

.field protected mTextShadowOffsetDy:F

.field protected mTextShadowRadius:F

.field protected mTextTransform:Lcom/facebook/react/views/text/TextTransform;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 78
    sput v0, Lcom/facebook/react/views/text/TextAttributeProps;->DEFAULT_JUSTIFICATION_MODE:I

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 82
    iput v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLineHeight:F

    const/4 v1, 0x0

    .line 83
    iput-boolean v1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIsColorSet:Z

    const/4 v2, 0x1

    .line 84
    iput-boolean v2, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mAllowFontScaling:Z

    .line 85
    iput v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mMaxFontSizeMultiplier:F

    .line 87
    iput-boolean v1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIsBackgroundColorSet:Z

    .line 89
    iput v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mOpacity:F

    const/4 v3, -0x1

    .line 91
    iput v3, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mNumberOfLines:I

    .line 92
    iput v3, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontSize:I

    const/high16 v4, -0x40800000    # -1.0f

    .line 93
    iput v4, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontSizeInput:F

    .line 94
    iput v4, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLineHeightInput:F

    .line 95
    iput v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLetterSpacingInput:F

    .line 96
    iput v1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextAlign:I

    .line 99
    iput v3, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLayoutDirection:I

    .line 101
    sget-object v4, Lcom/facebook/react/views/text/TextTransform;->NONE:Lcom/facebook/react/views/text/TextTransform;

    iput-object v4, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextTransform:Lcom/facebook/react/views/text/TextTransform;

    const/4 v4, 0x0

    .line 103
    iput v4, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowOffsetDx:F

    .line 104
    iput v4, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowOffsetDy:F

    .line 105
    iput v4, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowRadius:F

    const/high16 v4, 0x55000000

    .line 106
    iput v4, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowColor:I

    .line 108
    iput-boolean v1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIsUnderlineTextDecorationSet:Z

    .line 109
    iput-boolean v1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIsLineThroughTextDecorationSet:Z

    .line 110
    iput-boolean v2, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIncludeFontPadding:Z

    const/4 v2, 0x0

    .line 112
    iput-object v2, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mAccessibilityRole:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    .line 113
    iput-object v2, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mRole:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$Role;

    .line 115
    iput v3, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontStyle:I

    .line 116
    iput v3, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontWeight:I

    .line 139
    iput-object v2, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontFamily:Ljava/lang/String;

    .line 144
    iput-object v2, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontFeatureSettings:Ljava/lang/String;

    .line 146
    iput-boolean v1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mContainsImages:Z

    .line 147
    iput v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mHeightOfTallestInlineImage:F

    return-void
.end method

.method public static fromMapBuffer(Lcom/facebook/react/common/mapbuffer/MapBuffer;)Lcom/facebook/react/views/text/TextAttributeProps;
    .locals 3

    .line 153
    new-instance v0, Lcom/facebook/react/views/text/TextAttributeProps;

    invoke-direct {v0}, Lcom/facebook/react/views/text/TextAttributeProps;-><init>()V

    .line 156
    invoke-interface {p0}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 157
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/common/mapbuffer/MapBuffer$Entry;

    .line 159
    invoke-interface {v1}, Lcom/facebook/react/common/mapbuffer/MapBuffer$Entry;->getKey()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 233
    :pswitch_1
    invoke-interface {v1}, Lcom/facebook/react/common/mapbuffer/MapBuffer$Entry;->getDoubleValue()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setMaxFontSizeMultiplier(F)V

    goto :goto_0

    .line 230
    :pswitch_2
    invoke-interface {v1}, Lcom/facebook/react/common/mapbuffer/MapBuffer$Entry;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setTextTransform(Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :pswitch_3
    invoke-static {}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$Role;->values()[Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$Role;

    move-result-object v2

    invoke-interface {v1}, Lcom/facebook/react/common/mapbuffer/MapBuffer$Entry;->getIntValue()I

    move-result v1

    aget-object v1, v2, v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setRole(Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$Role;)V

    goto :goto_0

    .line 224
    :pswitch_4
    invoke-interface {v1}, Lcom/facebook/react/common/mapbuffer/MapBuffer$Entry;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setAccessibilityRole(Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :pswitch_5
    invoke-interface {v1}, Lcom/facebook/react/common/mapbuffer/MapBuffer$Entry;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setLayoutDirection(Ljava/lang/String;)V

    goto :goto_0

    .line 216
    :pswitch_6
    invoke-interface {v1}, Lcom/facebook/react/common/mapbuffer/MapBuffer$Entry;->getDoubleValue()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setTextShadowOffsetDy(F)V

    goto :goto_0

    .line 213
    :pswitch_7
    invoke-interface {v1}, Lcom/facebook/react/common/mapbuffer/MapBuffer$Entry;->getDoubleValue()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setTextShadowOffsetDx(F)V

    goto :goto_0

    .line 210
    :pswitch_8
    invoke-interface {v1}, Lcom/facebook/react/common/mapbuffer/MapBuffer$Entry;->getIntValue()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setTextShadowColor(I)V

    goto :goto_0

    .line 207
    :pswitch_9
    invoke-interface {v1}, Lcom/facebook/react/common/mapbuffer/MapBuffer$Entry;->getDoubleValue()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setTextShadowRadius(F)V

    goto :goto_0

    .line 202
    :pswitch_a
    invoke-interface {v1}, Lcom/facebook/react/common/mapbuffer/MapBuffer$Entry;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setTextDecorationLine(Ljava/lang/String;)V

    goto :goto_0

    .line 193
    :pswitch_b
    invoke-interface {v1}, Lcom/facebook/react/common/mapbuffer/MapBuffer$Entry;->getDoubleValue()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setLineHeight(F)V

    goto :goto_0

    .line 190
    :pswitch_c
    invoke-interface {v1}, Lcom/facebook/react/common/mapbuffer/MapBuffer$Entry;->getDoubleValue()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setLetterSpacing(F)V

    goto :goto_0

    .line 187
    :pswitch_d
    invoke-interface {v1}, Lcom/facebook/react/common/mapbuffer/MapBuffer$Entry;->getBooleanValue()Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setAllowFontScaling(Z)V

    goto/16 :goto_0

    .line 184
    :pswitch_e
    invoke-interface {v1}, Lcom/facebook/react/common/mapbuffer/MapBuffer$Entry;->getMapBufferValue()Lcom/facebook/react/common/mapbuffer/MapBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setFontVariant(Lcom/facebook/react/common/mapbuffer/MapBuffer;)V

    goto/16 :goto_0

    .line 181
    :pswitch_f
    invoke-interface {v1}, Lcom/facebook/react/common/mapbuffer/MapBuffer$Entry;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setFontStyle(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 178
    :pswitch_10
    invoke-interface {v1}, Lcom/facebook/react/common/mapbuffer/MapBuffer$Entry;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setFontWeight(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 173
    :pswitch_11
    invoke-interface {v1}, Lcom/facebook/react/common/mapbuffer/MapBuffer$Entry;->getDoubleValue()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setFontSize(F)V

    goto/16 :goto_0

    .line 170
    :pswitch_12
    invoke-interface {v1}, Lcom/facebook/react/common/mapbuffer/MapBuffer$Entry;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setFontFamily(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 167
    :pswitch_13
    invoke-interface {v1}, Lcom/facebook/react/common/mapbuffer/MapBuffer$Entry;->getDoubleValue()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setOpacity(F)V

    goto/16 :goto_0

    .line 164
    :pswitch_14
    invoke-interface {v1}, Lcom/facebook/react/common/mapbuffer/MapBuffer$Entry;->getIntValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setBackgroundColor(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 161
    :pswitch_15
    invoke-interface {v1}, Lcom/facebook/react/common/mapbuffer/MapBuffer$Entry;->getIntValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setColor(Ljava/lang/Integer;)V

    goto/16 :goto_0

    :cond_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static fromReadableMap(Lcom/facebook/react/uimanager/ReactStylesDiffMap;)Lcom/facebook/react/views/text/TextAttributeProps;
    .locals 7

    .line 246
    new-instance v0, Lcom/facebook/react/views/text/TextAttributeProps;

    invoke-direct {v0}, Lcom/facebook/react/views/text/TextAttributeProps;-><init>()V

    .line 247
    const-string v1, "numberOfLines"

    const/4 v2, -0x1

    invoke-static {p0, v1, v2}, Lcom/facebook/react/views/text/TextAttributeProps;->getIntProp(Lcom/facebook/react/uimanager/ReactStylesDiffMap;Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setNumberOfLines(I)V

    .line 248
    const-string v1, "lineHeight"

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {p0, v1, v2}, Lcom/facebook/react/views/text/TextAttributeProps;->getFloatProp(Lcom/facebook/react/uimanager/ReactStylesDiffMap;Ljava/lang/String;F)F

    move-result v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setLineHeight(F)V

    .line 249
    const-string v1, "letterSpacing"

    const/high16 v3, 0x7fc00000    # Float.NaN

    invoke-static {p0, v1, v3}, Lcom/facebook/react/views/text/TextAttributeProps;->getFloatProp(Lcom/facebook/react/uimanager/ReactStylesDiffMap;Ljava/lang/String;F)F

    move-result v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setLetterSpacing(F)V

    .line 250
    const-string v1, "allowFontScaling"

    const/4 v4, 0x1

    invoke-static {p0, v1, v4}, Lcom/facebook/react/views/text/TextAttributeProps;->getBooleanProp(Lcom/facebook/react/uimanager/ReactStylesDiffMap;Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setAllowFontScaling(Z)V

    .line 251
    const-string v1, "maxFontSizeMultiplier"

    .line 252
    invoke-static {p0, v1, v3}, Lcom/facebook/react/views/text/TextAttributeProps;->getFloatProp(Lcom/facebook/react/uimanager/ReactStylesDiffMap;Ljava/lang/String;F)F

    move-result v1

    .line 251
    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setMaxFontSizeMultiplier(F)V

    .line 253
    const-string v1, "fontSize"

    invoke-static {p0, v1, v2}, Lcom/facebook/react/views/text/TextAttributeProps;->getFloatProp(Lcom/facebook/react/uimanager/ReactStylesDiffMap;Ljava/lang/String;F)F

    move-result v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setFontSize(F)V

    .line 254
    const-string v1, "color"

    invoke-virtual {p0, v1}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1, v5}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v6

    :goto_0
    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setColor(Ljava/lang/Integer;)V

    .line 256
    const-string v1, "foregroundColor"

    invoke-virtual {p0, v1}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 257
    invoke-virtual {p0, v1, v5}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v6

    .line 255
    :goto_1
    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setColor(Ljava/lang/Integer;)V

    .line 260
    const-string v1, "backgroundColor"

    invoke-virtual {p0, v1}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 261
    invoke-virtual {p0, v1, v5}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v6

    .line 259
    :goto_2
    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setBackgroundColor(Ljava/lang/Integer;)V

    .line 263
    const-string v1, "opacity"

    invoke-static {p0, v1, v3}, Lcom/facebook/react/views/text/TextAttributeProps;->getFloatProp(Lcom/facebook/react/uimanager/ReactStylesDiffMap;Ljava/lang/String;F)F

    move-result v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setOpacity(F)V

    .line 264
    const-string v1, "fontFamily"

    invoke-static {p0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->getStringProp(Lcom/facebook/react/uimanager/ReactStylesDiffMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setFontFamily(Ljava/lang/String;)V

    .line 265
    const-string v1, "fontWeight"

    invoke-static {p0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->getStringProp(Lcom/facebook/react/uimanager/ReactStylesDiffMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setFontWeight(Ljava/lang/String;)V

    .line 266
    const-string v1, "fontStyle"

    invoke-static {p0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->getStringProp(Lcom/facebook/react/uimanager/ReactStylesDiffMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setFontStyle(Ljava/lang/String;)V

    .line 267
    const-string v1, "fontVariant"

    invoke-static {p0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->getArrayProp(Lcom/facebook/react/uimanager/ReactStylesDiffMap;Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setFontVariant(Lcom/facebook/react/bridge/ReadableArray;)V

    .line 268
    const-string v1, "includeFontPadding"

    invoke-static {p0, v1, v4}, Lcom/facebook/react/views/text/TextAttributeProps;->getBooleanProp(Lcom/facebook/react/uimanager/ReactStylesDiffMap;Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setIncludeFontPadding(Z)V

    .line 269
    const-string v1, "textDecorationLine"

    invoke-static {p0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->getStringProp(Lcom/facebook/react/uimanager/ReactStylesDiffMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setTextDecorationLine(Ljava/lang/String;)V

    .line 271
    const-string v1, "textShadowOffset"

    invoke-virtual {p0, v1}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v6

    .line 270
    :cond_3
    invoke-direct {v0, v6}, Lcom/facebook/react/views/text/TextAttributeProps;->setTextShadowOffset(Lcom/facebook/react/bridge/ReadableMap;)V

    .line 272
    const-string v1, "textShadowRadius"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p0, v1, v2}, Lcom/facebook/react/views/text/TextAttributeProps;->getFloatProp(Lcom/facebook/react/uimanager/ReactStylesDiffMap;Ljava/lang/String;F)F

    move-result v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setTextShadowRadius(F)V

    .line 273
    const-string v1, "textShadowColor"

    const/high16 v2, 0x55000000

    invoke-static {p0, v1, v2}, Lcom/facebook/react/views/text/TextAttributeProps;->getIntProp(Lcom/facebook/react/uimanager/ReactStylesDiffMap;Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setTextShadowColor(I)V

    .line 274
    const-string v1, "textTransform"

    invoke-static {p0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->getStringProp(Lcom/facebook/react/uimanager/ReactStylesDiffMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setTextTransform(Ljava/lang/String;)V

    .line 275
    const-string v1, "layoutDirection"

    invoke-static {p0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->getStringProp(Lcom/facebook/react/uimanager/ReactStylesDiffMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setLayoutDirection(Ljava/lang/String;)V

    .line 276
    const-string v1, "accessibilityRole"

    invoke-static {p0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->getStringProp(Lcom/facebook/react/uimanager/ReactStylesDiffMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->setAccessibilityRole(Ljava/lang/String;)V

    .line 277
    const-string v1, "role"

    invoke-static {p0, v1}, Lcom/facebook/react/views/text/TextAttributeProps;->getStringProp(Lcom/facebook/react/uimanager/ReactStylesDiffMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/facebook/react/views/text/TextAttributeProps;->setRole(Ljava/lang/String;)V

    return-object v0
.end method

.method private static getArrayProp(Lcom/facebook/react/uimanager/ReactStylesDiffMap;Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;
    .locals 1

    .line 351
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getBooleanProp(Lcom/facebook/react/uimanager/ReactStylesDiffMap;Ljava/lang/String;Z)Z
    .locals 1

    .line 319
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method private static getFloatProp(Lcom/facebook/react/uimanager/ReactStylesDiffMap;Ljava/lang/String;F)F
    .locals 1

    .line 343
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->getFloat(Ljava/lang/String;F)F

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method public static getHyphenationFrequency(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 775
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const-string v1, "normal"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "none"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method private static getIntProp(Lcom/facebook/react/uimanager/ReactStylesDiffMap;Ljava/lang/String;I)I
    .locals 1

    .line 335
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method public static getJustificationMode(Lcom/facebook/react/uimanager/ReactStylesDiffMap;I)I
    .locals 2

    .line 306
    const-string v0, "textAlign"

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return p1

    .line 310
    :cond_0
    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 311
    const-string p1, "justify"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0x1a

    if-lt p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    .line 314
    :cond_1
    sget p0, Lcom/facebook/react/views/text/TextAttributeProps;->DEFAULT_JUSTIFICATION_MODE:I

    return p0
.end method

.method public static getLayoutDirection(Ljava/lang/String;)I
    .locals 3

    const/4 v0, -0x1

    if-eqz p0, :cond_3

    .line 673
    const-string v1, "undefined"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 675
    :cond_0
    const-string v1, "rtl"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 677
    :cond_1
    const-string v1, "ltr"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 680
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid layoutDirection: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ReactNative"

    invoke-static {v1, p0}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return v0
.end method

.method private static getStringProp(Lcom/facebook/react/uimanager/ReactStylesDiffMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 327
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getTextAlignment(Lcom/facebook/react/uimanager/ReactStylesDiffMap;ZI)I
    .locals 3

    .line 282
    const-string v0, "textAlign"

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return p2

    .line 286
    :cond_0
    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/ReactStylesDiffMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 287
    const-string p2, "justify"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x3

    if-eqz p2, :cond_1

    return v0

    :cond_1
    const/4 p2, 0x0

    if-eqz p0, :cond_8

    .line 290
    const-string v1, "auto"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 292
    :cond_2
    const-string v1, "left"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x5

    if-eqz v1, :cond_4

    if-eqz p1, :cond_3

    move v0, v2

    :cond_3
    return v0

    .line 294
    :cond_4
    const-string v1, "right"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    move v0, v2

    :goto_0
    return v0

    .line 296
    :cond_6
    const-string p1, "center"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p0, 0x1

    return p0

    .line 299
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid textAlign: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ReactNative"

    invoke-static {p1, p0}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_1
    return p2
.end method

.method public static getTextBreakStrategy(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    .line 757
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const-string v1, "balanced"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "simple"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :cond_2
    :goto_0
    return v0
.end method

.method private setAccessibilityRole(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 731
    iput-object p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mAccessibilityRole:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    goto :goto_0

    .line 733
    :cond_0
    invoke-static {p1}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;->fromValue(Ljava/lang/String;)Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mAccessibilityRole:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    :goto_0
    return-void
.end method

.method private setAllowFontScaling(Z)V
    .locals 1

    .line 417
    iget-boolean v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mAllowFontScaling:Z

    if-eq p1, v0, :cond_0

    .line 418
    iput-boolean p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mAllowFontScaling:Z

    .line 419
    iget p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontSizeInput:F

    invoke-direct {p0, p1}, Lcom/facebook/react/views/text/TextAttributeProps;->setFontSize(F)V

    .line 420
    iget p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLineHeightInput:F

    invoke-direct {p0, p1}, Lcom/facebook/react/views/text/TextAttributeProps;->setLineHeight(F)V

    :cond_0
    return-void
.end method

.method private setBackgroundColor(Ljava/lang/Integer;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 466
    :goto_0
    iput-boolean v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIsBackgroundColorSet:Z

    if-eqz v0, :cond_1

    .line 468
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mBackgroundColor:I

    :cond_1
    return-void
.end method

.method private setColor(Ljava/lang/Integer;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 448
    :goto_0
    iput-boolean v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIsColorSet:Z

    if-eqz v0, :cond_1

    .line 450
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mColor:I

    :cond_1
    return-void
.end method

.method private setFontFamily(Ljava/lang/String;)V
    .locals 0

    .line 494
    iput-object p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontFamily:Ljava/lang/String;

    return-void
.end method

.method private setFontSize(F)V
    .locals 2

    .line 433
    iput p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontSizeInput:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    .line 436
    iget-boolean v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mAllowFontScaling:Z

    if-eqz v0, :cond_0

    .line 437
    iget v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mMaxFontSizeMultiplier:F

    invoke-static {p1, v0}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromSP(FF)F

    move-result p1

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    goto :goto_0

    .line 438
    :cond_0
    invoke-static {p1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result p1

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    :goto_0
    double-to-float p1, v0

    :cond_1
    float-to-int p1, p1

    .line 440
    iput p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontSize:I

    return-void
.end method

.method private setFontStyle(Ljava/lang/String;)V
    .locals 0

    .line 608
    invoke-static {p1}, Lcom/facebook/react/views/text/ReactTypefaceUtils;->parseFontStyle(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontStyle:I

    return-void
.end method

.method private setFontVariant(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0

    .line 498
    invoke-static {p1}, Lcom/facebook/react/views/text/ReactTypefaceUtils;->parseFontVariant(Lcom/facebook/react/bridge/ReadableArray;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontFeatureSettings:Ljava/lang/String;

    return-void
.end method

.method private setFontVariant(Lcom/facebook/react/common/mapbuffer/MapBuffer;)V
    .locals 4

    if-eqz p1, :cond_1c

    .line 502
    invoke-interface {p1}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 507
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 508
    invoke-interface {p1}, Lcom/facebook/react/common/mapbuffer/MapBuffer;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 509
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 510
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/common/mapbuffer/MapBuffer$Entry;

    .line 511
    invoke-interface {v1}, Lcom/facebook/react/common/mapbuffer/MapBuffer$Entry;->getStringValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 513
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v2, "stylistic-seventeen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v3, 0x18

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "stylistic-fourteen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v3, 0x17

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "stylistic-nineteen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v3, 0x16

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "small-caps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_1

    :cond_5
    const/16 v3, 0x15

    goto/16 :goto_1

    :sswitch_4
    const-string v2, "stylistic-twenty"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_1

    :cond_6
    const/16 v3, 0x14

    goto/16 :goto_1

    :sswitch_5
    const-string v2, "stylistic-twelve"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_1

    :cond_7
    const/16 v3, 0x13

    goto/16 :goto_1

    :sswitch_6
    const-string v2, "stylistic-sixteen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_1

    :cond_8
    const/16 v3, 0x12

    goto/16 :goto_1

    :sswitch_7
    const-string v2, "stylistic-two"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_1

    :cond_9
    const/16 v3, 0x11

    goto/16 :goto_1

    :sswitch_8
    const-string v2, "stylistic-ten"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_1

    :cond_a
    const/16 v3, 0x10

    goto/16 :goto_1

    :sswitch_9
    const-string v2, "stylistic-six"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_1

    :cond_b
    const/16 v3, 0xf

    goto/16 :goto_1

    :sswitch_a
    const-string v2, "stylistic-one"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_1

    :cond_c
    const/16 v3, 0xe

    goto/16 :goto_1

    :sswitch_b
    const-string v2, "stylistic-nine"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_1

    :cond_d
    const/16 v3, 0xd

    goto/16 :goto_1

    :sswitch_c
    const-string v2, "stylistic-four"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto/16 :goto_1

    :cond_e
    const/16 v3, 0xc

    goto/16 :goto_1

    :sswitch_d
    const-string v2, "stylistic-five"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto/16 :goto_1

    :cond_f
    const/16 v3, 0xb

    goto/16 :goto_1

    :sswitch_e
    const-string v2, "stylistic-eleven"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto/16 :goto_1

    :cond_10
    const/16 v3, 0xa

    goto/16 :goto_1

    :sswitch_f
    const-string v2, "stylistic-three"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto/16 :goto_1

    :cond_11
    const/16 v3, 0x9

    goto/16 :goto_1

    :sswitch_10
    const-string v2, "stylistic-seven"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_1

    :cond_12
    const/16 v3, 0x8

    goto/16 :goto_1

    :sswitch_11
    const-string v2, "stylistic-eight"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_1

    :cond_13
    const/4 v3, 0x7

    goto :goto_1

    :sswitch_12
    const-string v2, "oldstyle-nums"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_1

    :cond_14
    const/4 v3, 0x6

    goto :goto_1

    :sswitch_13
    const-string v2, "tabular-nums"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_1

    :cond_15
    const/4 v3, 0x5

    goto :goto_1

    :sswitch_14
    const-string v2, "lining-nums"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_1

    :cond_16
    const/4 v3, 0x4

    goto :goto_1

    :sswitch_15
    const-string v2, "proportional-nums"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_1

    :cond_17
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_16
    const-string v2, "stylistic-eighteen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_1

    :cond_18
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_17
    const-string v2, "stylistic-fifteen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_1

    :cond_19
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_18
    const-string v2, "stylistic-thirteen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_1

    :cond_1a
    const/4 v3, 0x0

    :goto_1
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_0

    .line 578
    :pswitch_0
    const-string v1, "\'ss17\'"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 569
    :pswitch_1
    const-string v1, "\'ss14\'"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 584
    :pswitch_2
    const-string v1, "\'ss19\'"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 515
    :pswitch_3
    const-string v1, "\'smcp\'"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 587
    :pswitch_4
    const-string v1, "\'ss20\'"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 563
    :pswitch_5
    const-string v1, "\'ss12\'"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 575
    :pswitch_6
    const-string v1, "\'ss16\'"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 533
    :pswitch_7
    const-string v1, "\'ss02\'"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 557
    :pswitch_8
    const-string v1, "\'ss10\'"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 545
    :pswitch_9
    const-string v1, "\'ss06\'"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 530
    :pswitch_a
    const-string v1, "\'ss01\'"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 554
    :pswitch_b
    const-string v1, "\'ss09\'"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 539
    :pswitch_c
    const-string v1, "\'ss04\'"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 542
    :pswitch_d
    const-string v1, "\'ss05\'"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 560
    :pswitch_e
    const-string v1, "\'ss11\'"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 536
    :pswitch_f
    const-string v1, "\'ss03\'"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 548
    :pswitch_10
    const-string v1, "\'ss07\'"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 551
    :pswitch_11
    const-string v1, "\'ss08\'"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 518
    :pswitch_12
    const-string v1, "\'onum\'"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 524
    :pswitch_13
    const-string v1, "\'tnum\'"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 521
    :pswitch_14
    const-string v1, "\'lnum\'"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 527
    :pswitch_15
    const-string v1, "\'pnum\'"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 581
    :pswitch_16
    const-string v1, "\'ss18\'"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 572
    :pswitch_17
    const-string v1, "\'ss15\'"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 566
    :pswitch_18
    const-string v1, "\'ss13\'"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 592
    :cond_1b
    const-string p1, ", "

    invoke-static {p1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontFeatureSettings:Ljava/lang/String;

    return-void

    :cond_1c
    :goto_2
    const/4 p1, 0x0

    .line 503
    iput-object p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontFeatureSettings:Ljava/lang/String;

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7634064c -> :sswitch_18
        -0x733f3500 -> :sswitch_17
        -0x5b760864 -> :sswitch_16
        -0x473fc7cb -> :sswitch_15
        -0x3f4391b7 -> :sswitch_14
        -0x2e038ca3 -> :sswitch_13
        -0x2751e650 -> :sswitch_12
        0x11ac52f2 -> :sswitch_11
        0x12700270 -> :sswitch_10
        0x127f6801 -> :sswitch_f
        0x24079c3e -> :sswitch_e
        0x3a60dbef -> :sswitch_d
        0x3a60f263 -> :sswitch_c
        0x3a647def -> :sswitch_b
        0x3bb0ad89 -> :sswitch_a
        0x3bb0bc05 -> :sswitch_9
        0x3bb0bf40 -> :sswitch_8
        0x3bb0c16f -> :sswitch_7
        0x3d6f745f -> :sswitch_6
        0x3e3b2c96 -> :sswitch_5
        0x3e3b33ee -> :sswitch_4
        0x468813e7 -> :sswitch_3
        0x573c3149 -> :sswitch_2
        0x62414bbd -> :sswitch_1
        0x7cff8d4a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setFontWeight(Ljava/lang/String;)V
    .locals 0

    .line 604
    invoke-static {p1}, Lcom/facebook/react/views/text/ReactTypefaceUtils;->parseFontWeight(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontWeight:I

    return-void
.end method

.method private setIncludeFontPadding(Z)V
    .locals 0

    .line 612
    iput-boolean p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIncludeFontPadding:Z

    return-void
.end method

.method private setLayoutDirection(Ljava/lang/String;)V
    .locals 0

    .line 687
    invoke-static {p1}, Lcom/facebook/react/views/text/TextAttributeProps;->getLayoutDirection(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLayoutDirection:I

    return-void
.end method

.method private setLetterSpacing(F)V
    .locals 0

    .line 385
    iput p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLetterSpacingInput:F

    return-void
.end method

.method private setLineHeight(F)V
    .locals 1

    .line 373
    iput p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLineHeightInput:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 375
    iput p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLineHeight:F

    goto :goto_1

    .line 378
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mAllowFontScaling:Z

    if-eqz v0, :cond_1

    .line 379
    invoke-static {p1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromSP(F)F

    move-result p1

    goto :goto_0

    .line 380
    :cond_1
    invoke-static {p1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result p1

    :goto_0
    iput p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLineHeight:F

    :goto_1
    return-void
.end method

.method private setMaxFontSizeMultiplier(F)V
    .locals 1

    .line 425
    iget v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mMaxFontSizeMultiplier:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 426
    iput p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mMaxFontSizeMultiplier:F

    .line 427
    iget p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontSizeInput:F

    invoke-direct {p0, p1}, Lcom/facebook/react/views/text/TextAttributeProps;->setFontSize(F)V

    .line 428
    iget p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLineHeightInput:F

    invoke-direct {p0, p1}, Lcom/facebook/react/views/text/TextAttributeProps;->setLineHeight(F)V

    :cond_0
    return-void
.end method

.method private setNumberOfLines(I)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 369
    :cond_0
    iput p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mNumberOfLines:I

    return-void
.end method

.method private setOpacity(F)V
    .locals 0

    .line 478
    iput p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mOpacity:F

    return-void
.end method

.method private setRole(Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$Role;)V
    .locals 0

    .line 751
    iput-object p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mRole:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$Role;

    return-void
.end method

.method private setRole(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 744
    iput-object p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mRole:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$Role;

    goto :goto_0

    .line 746
    :cond_0
    invoke-static {p1}, Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$Role;->fromValue(Ljava/lang/String;)Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$Role;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mRole:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$Role;

    :goto_0
    return-void
.end method

.method private setTextDecorationLine(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    .line 616
    iput-boolean v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIsUnderlineTextDecorationSet:Z

    .line 617
    iput-boolean v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIsLineThroughTextDecorationSet:Z

    if-eqz p1, :cond_2

    .line 619
    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v2, p1, v0

    .line 620
    const-string v3, "underline"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 621
    iput-boolean v4, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIsUnderlineTextDecorationSet:Z

    goto :goto_1

    .line 622
    :cond_0
    const-string v3, "strikethrough"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 623
    iput-boolean v4, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIsLineThroughTextDecorationSet:Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setTextShadowColor(I)V
    .locals 1

    .line 705
    iget v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowColor:I

    if-eq p1, v0, :cond_0

    .line 706
    iput p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowColor:I

    :cond_0
    return-void
.end method

.method private setTextShadowOffset(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 2

    const/4 v0, 0x0

    .line 638
    iput v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowOffsetDx:F

    .line 639
    iput v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowOffsetDy:F

    if-eqz p1, :cond_1

    .line 642
    const-string/jumbo v0, "width"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 643
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 645
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(D)F

    move-result v0

    iput v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowOffsetDx:F

    .line 647
    :cond_0
    const-string v0, "height"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 648
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 650
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(D)F

    move-result p1

    iput p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowOffsetDy:F

    :cond_1
    return-void
.end method

.method private setTextShadowOffsetDx(F)V
    .locals 0

    .line 660
    invoke-static {p1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result p1

    iput p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowOffsetDx:F

    return-void
.end method

.method private setTextShadowOffsetDy(F)V
    .locals 0

    .line 668
    invoke-static {p1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result p1

    iput p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowOffsetDy:F

    return-void
.end method

.method private setTextShadowRadius(F)V
    .locals 1

    .line 695
    iget v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowRadius:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 696
    iput p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowRadius:F

    :cond_0
    return-void
.end method

.method private setTextTransform(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_4

    .line 711
    const-string v0, "none"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 713
    :cond_0
    const-string/jumbo v0, "uppercase"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 714
    sget-object p1, Lcom/facebook/react/views/text/TextTransform;->UPPERCASE:Lcom/facebook/react/views/text/TextTransform;

    iput-object p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextTransform:Lcom/facebook/react/views/text/TextTransform;

    goto :goto_1

    .line 715
    :cond_1
    const-string v0, "lowercase"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 716
    sget-object p1, Lcom/facebook/react/views/text/TextTransform;->LOWERCASE:Lcom/facebook/react/views/text/TextTransform;

    iput-object p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextTransform:Lcom/facebook/react/views/text/TextTransform;

    goto :goto_1

    .line 717
    :cond_2
    const-string v0, "capitalize"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 718
    sget-object p1, Lcom/facebook/react/views/text/TextTransform;->CAPITALIZE:Lcom/facebook/react/views/text/TextTransform;

    iput-object p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextTransform:Lcom/facebook/react/views/text/TextTransform;

    goto :goto_1

    .line 720
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid textTransform: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ReactNative"

    invoke-static {v0, p1}, Lcom/facebook/common/logging/FLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    sget-object p1, Lcom/facebook/react/views/text/TextTransform;->NONE:Lcom/facebook/react/views/text/TextTransform;

    iput-object p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextTransform:Lcom/facebook/react/views/text/TextTransform;

    goto :goto_1

    .line 712
    :cond_4
    :goto_0
    sget-object p1, Lcom/facebook/react/views/text/TextTransform;->NONE:Lcom/facebook/react/views/text/TextTransform;

    iput-object p1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextTransform:Lcom/facebook/react/views/text/TextTransform;

    :goto_1
    return-void
.end method


# virtual methods
.method public getAccessibilityRole()Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;
    .locals 1

    .line 726
    iget-object v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mAccessibilityRole:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$AccessibilityRole;

    return-object v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .line 459
    iget v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mBackgroundColor:I

    return v0
.end method

.method public getColor()I
    .locals 1

    .line 444
    iget v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mColor:I

    return v0
.end method

.method public getEffectiveFontSize()I
    .locals 1

    .line 413
    iget v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontSize:I

    return v0
.end method

.method public getEffectiveLetterSpacing()F
    .locals 1

    .line 409
    invoke-virtual {p0}, Lcom/facebook/react/views/text/TextAttributeProps;->getLetterSpacing()F

    move-result v0

    return v0
.end method

.method public getEffectiveLineHeight()F
    .locals 2

    .line 361
    iget v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLineHeight:F

    .line 362
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mHeightOfTallestInlineImage:F

    .line 363
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mHeightOfTallestInlineImage:F

    iget v1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLineHeight:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    goto :goto_0

    .line 365
    :cond_0
    iget v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLineHeight:F

    :goto_0
    return v0
.end method

.method public getFontFamily()Ljava/lang/String;
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontFamily:Ljava/lang/String;

    return-object v0
.end method

.method public getFontFeatureSettings()Ljava/lang/String;
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontFeatureSettings:Ljava/lang/String;

    return-object v0
.end method

.method public getFontStyle()I
    .locals 1

    .line 486
    iget v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontStyle:I

    return v0
.end method

.method public getFontWeight()I
    .locals 1

    .line 600
    iget v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontWeight:I

    return v0
.end method

.method public getLetterSpacing()F
    .locals 3

    .line 395
    iget-boolean v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mAllowFontScaling:Z

    if-eqz v0, :cond_0

    .line 396
    iget v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLetterSpacingInput:F

    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromSP(F)F

    move-result v0

    goto :goto_0

    .line 397
    :cond_0
    iget v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mLetterSpacingInput:F

    invoke-static {v0}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v0

    .line 399
    :goto_0
    iget v1, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontSize:I

    if-lez v1, :cond_1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0

    .line 400
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FontSize should be a positive value. Current value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mFontSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOpacity()F
    .locals 1

    .line 474
    iget v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mOpacity:F

    return v0
.end method

.method public getRole()Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$Role;
    .locals 1

    .line 739
    iget-object v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mRole:Lcom/facebook/react/uimanager/ReactAccessibilityDelegate$Role;

    return-object v0
.end method

.method public getTextShadowColor()I
    .locals 1

    .line 701
    iget v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowColor:I

    return v0
.end method

.method public getTextShadowOffsetDx()F
    .locals 1

    .line 656
    iget v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowOffsetDx:F

    return v0
.end method

.method public getTextShadowOffsetDy()F
    .locals 1

    .line 664
    iget v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowOffsetDy:F

    return v0
.end method

.method public getTextShadowRadius()F
    .locals 1

    .line 691
    iget v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextShadowRadius:F

    return v0
.end method

.method public getTextTransform()Lcom/facebook/react/views/text/TextTransform;
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mTextTransform:Lcom/facebook/react/views/text/TextTransform;

    return-object v0
.end method

.method public isBackgroundColorSet()Z
    .locals 1

    .line 482
    iget-boolean v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIsBackgroundColorSet:Z

    return v0
.end method

.method public isColorSet()Z
    .locals 1

    .line 455
    iget-boolean v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIsColorSet:Z

    return v0
.end method

.method public isLineThroughTextDecorationSet()Z
    .locals 1

    .line 634
    iget-boolean v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIsLineThroughTextDecorationSet:Z

    return v0
.end method

.method public isUnderlineTextDecorationSet()Z
    .locals 1

    .line 630
    iget-boolean v0, p0, Lcom/facebook/react/views/text/TextAttributeProps;->mIsUnderlineTextDecorationSet:Z

    return v0
.end method
