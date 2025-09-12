.class public final Lcom/facebook/react/uimanager/LayoutDirectionUtil;
.super Ljava/lang/Object;
.source "LayoutDirectionUtil.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/uimanager/LayoutDirectionUtil$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/facebook/react/uimanager/LayoutDirectionUtil;",
        "",
        "()V",
        "toAndroidFromYoga",
        "",
        "direction",
        "Lcom/facebook/yoga/YogaDirection;",
        "toYogaFromAndroid",
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
.field public static final INSTANCE:Lcom/facebook/react/uimanager/LayoutDirectionUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/react/uimanager/LayoutDirectionUtil;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/LayoutDirectionUtil;-><init>()V

    sput-object v0, Lcom/facebook/react/uimanager/LayoutDirectionUtil;->INSTANCE:Lcom/facebook/react/uimanager/LayoutDirectionUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final toAndroidFromYoga(Lcom/facebook/yoga/YogaDirection;)I
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "direction"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget-object v0, Lcom/facebook/react/uimanager/LayoutDirectionUtil$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/facebook/yoga/YogaDirection;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static final toYogaFromAndroid(I)Lcom/facebook/yoga/YogaDirection;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 27
    sget-object p0, Lcom/facebook/yoga/YogaDirection;->INHERIT:Lcom/facebook/yoga/YogaDirection;

    goto :goto_0

    .line 26
    :cond_0
    sget-object p0, Lcom/facebook/yoga/YogaDirection;->RTL:Lcom/facebook/yoga/YogaDirection;

    goto :goto_0

    .line 25
    :cond_1
    sget-object p0, Lcom/facebook/yoga/YogaDirection;->LTR:Lcom/facebook/yoga/YogaDirection;

    :goto_0
    return-object p0
.end method
