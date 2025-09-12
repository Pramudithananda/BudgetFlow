.class public final synthetic Lexpo/modules/kotlin/activityaware/AppCompatActivityAwareHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lexpo/modules/kotlin/activityaware/OnActivityAvailableListener;

.field public final synthetic f$1:Landroidx/appcompat/app/AppCompatActivity;


# direct methods
.method public synthetic constructor <init>(Lexpo/modules/kotlin/activityaware/OnActivityAvailableListener;Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/kotlin/activityaware/AppCompatActivityAwareHelper$$ExternalSyntheticLambda1;->f$0:Lexpo/modules/kotlin/activityaware/OnActivityAvailableListener;

    iput-object p2, p0, Lexpo/modules/kotlin/activityaware/AppCompatActivityAwareHelper$$ExternalSyntheticLambda1;->f$1:Landroidx/appcompat/app/AppCompatActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lexpo/modules/kotlin/activityaware/AppCompatActivityAwareHelper$$ExternalSyntheticLambda1;->f$0:Lexpo/modules/kotlin/activityaware/OnActivityAvailableListener;

    iget-object v1, p0, Lexpo/modules/kotlin/activityaware/AppCompatActivityAwareHelper$$ExternalSyntheticLambda1;->f$1:Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v0, v1}, Lexpo/modules/kotlin/activityaware/AppCompatActivityAwareHelper;->$r8$lambda$r2-KheI3N-V8zEYxsJQJsxjU_CE(Lexpo/modules/kotlin/activityaware/OnActivityAvailableListener;Landroidx/appcompat/app/AppCompatActivity;)V

    return-void
.end method
