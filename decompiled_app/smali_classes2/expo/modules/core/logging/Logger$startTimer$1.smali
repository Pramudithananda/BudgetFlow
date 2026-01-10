.class public final Lexpo/modules/core/logging/Logger$startTimer$1;
.super Ljava/lang/Object;
.source "Logger.kt"

# interfaces
.implements Lexpo/modules/core/logging/LoggerTimer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/core/logging/Logger;->startTimer(Lkotlin/jvm/functions/Function1;)Lexpo/modules/core/logging/LoggerTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0015\u0010\u0002\u001a\u00020\u0003H\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u0082\u0002\u000b\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u0006"
    }
    d2 = {
        "expo/modules/core/logging/Logger$startTimer$1",
        "Lexpo/modules/core/logging/LoggerTimer;",
        "stop",
        "Lkotlin/time/Duration;",
        "stop-UwyO8pc",
        "()J",
        "expo-modules-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $logFormatter:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $start:J

.field final synthetic this$0:Lexpo/modules/core/logging/Logger;


# direct methods
.method constructor <init>(JLexpo/modules/core/logging/Logger;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lexpo/modules/core/logging/Logger;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Lexpo/modules/core/logging/Logger$startTimer$1;->$start:J

    iput-object p3, p0, Lexpo/modules/core/logging/Logger$startTimer$1;->this$0:Lexpo/modules/core/logging/Logger;

    iput-object p4, p0, Lexpo/modules/core/logging/Logger$startTimer$1;->$logFormatter:Lkotlin/jvm/functions/Function1;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public stop-UwyO8pc()J
    .locals 8

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 82
    iget-wide v2, p0, Lexpo/modules/core/logging/Logger$startTimer$1;->$start:J

    sub-long/2addr v0, v2

    .line 83
    iget-object v2, p0, Lexpo/modules/core/logging/Logger$startTimer$1;->this$0:Lexpo/modules/core/logging/Logger;

    sget-object v3, Lexpo/modules/core/logging/LogType;->Timer:Lexpo/modules/core/logging/LogType;

    iget-object v4, p0, Lexpo/modules/core/logging/Logger$startTimer$1;->$logFormatter:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lexpo/modules/core/logging/Logger;->log$default(Lexpo/modules/core/logging/Logger;Lexpo/modules/core/logging/LogType;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 84
    sget-object v2, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1, v2}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v0

    return-wide v0
.end method
