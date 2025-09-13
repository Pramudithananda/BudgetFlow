.class public final synthetic Lexpo/modules/adapters/react/permissions/PermissionsService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lexpo/modules/interfaces/permissions/PermissionsResponseListener;


# instance fields
.field public final synthetic f$0:Lexpo/modules/core/Promise;


# direct methods
.method public synthetic constructor <init>(Lexpo/modules/core/Promise;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/adapters/react/permissions/PermissionsService$$ExternalSyntheticLambda3;->f$0:Lexpo/modules/core/Promise;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/util/Map;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lexpo/modules/adapters/react/permissions/PermissionsService$$ExternalSyntheticLambda3;->f$0:Lexpo/modules/core/Promise;

    invoke-static {v0, p1}, Lexpo/modules/adapters/react/permissions/PermissionsService;->$r8$lambda$7sCfzFk7YtO3EPNtwdzfGvuc46E(Lexpo/modules/core/Promise;Ljava/util/Map;)V

    return-void
.end method
