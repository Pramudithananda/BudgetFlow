.class public final enum Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;
.super Ljava/lang/Enum;
.source "FrameLoader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FrameType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;",
        "",
        "(Ljava/lang/String;I)V",
        "SUCCESS",
        "NEAREST",
        "MISSING",
        "animated-drawable_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;

.field public static final enum MISSING:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;

.field public static final enum NEAREST:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;

.field public static final enum SUCCESS:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;


# direct methods
.method private static final synthetic $values()[Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;
    .locals 3

    sget-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;->SUCCESS:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;

    sget-object v1, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;->NEAREST:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;

    sget-object v2, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;->MISSING:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;

    filled-new-array {v0, v1, v2}, [Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 50
    new-instance v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;->SUCCESS:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;

    .line 51
    new-instance v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;

    const-string v1, "NEAREST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;->NEAREST:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;

    .line 52
    new-instance v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;

    const-string v1, "MISSING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;->MISSING:Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;

    invoke-static {}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;->$values()[Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;

    move-result-object v0

    sput-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;->$VALUES:[Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;
    .locals 1

    const-class v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;

    return-object p0
.end method

.method public static values()[Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;
    .locals 1

    sget-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;->$VALUES:[Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/FrameResult$FrameType;

    return-object v0
.end method
