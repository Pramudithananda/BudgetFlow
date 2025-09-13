.class final Lcom/facebook/react/modules/core/JavaTimerManager$timers$1;
.super Lkotlin/jvm/internal/Lambda;
.source "JavaTimerManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/modules/core/JavaTimerManager;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Lcom/facebook/react/modules/core/JavaScriptTimerExecutor;Lcom/facebook/react/modules/core/ReactChoreographer;Lcom/facebook/react/devsupport/interfaces/DevSupportManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/facebook/react/modules/core/JavaTimerManager$Timer;",
        "Lcom/facebook/react/modules/core/JavaTimerManager$Timer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "lhs",
        "Lcom/facebook/react/modules/core/JavaTimerManager$Timer;",
        "kotlin.jvm.PlatformType",
        "rhs",
        "invoke",
        "(Lcom/facebook/react/modules/core/JavaTimerManager$Timer;Lcom/facebook/react/modules/core/JavaTimerManager$Timer;)Ljava/lang/Integer;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/facebook/react/modules/core/JavaTimerManager$timers$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/react/modules/core/JavaTimerManager$timers$1;

    invoke-direct {v0}, Lcom/facebook/react/modules/core/JavaTimerManager$timers$1;-><init>()V

    sput-object v0, Lcom/facebook/react/modules/core/JavaTimerManager$timers$1;->INSTANCE:Lcom/facebook/react/modules/core/JavaTimerManager$timers$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/facebook/react/modules/core/JavaTimerManager$Timer;Lcom/facebook/react/modules/core/JavaTimerManager$Timer;)Ljava/lang/Integer;
    .locals 2

    .line 64
    invoke-virtual {p1}, Lcom/facebook/react/modules/core/JavaTimerManager$Timer;->getTargetTime()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/facebook/react/modules/core/JavaTimerManager$Timer;->getTargetTime()J

    move-result-wide p1

    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Lkotlin/math/MathKt;->getSign(J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 64
    check-cast p1, Lcom/facebook/react/modules/core/JavaTimerManager$Timer;

    check-cast p2, Lcom/facebook/react/modules/core/JavaTimerManager$Timer;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/modules/core/JavaTimerManager$timers$1;->invoke(Lcom/facebook/react/modules/core/JavaTimerManager$Timer;Lcom/facebook/react/modules/core/JavaTimerManager$Timer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
