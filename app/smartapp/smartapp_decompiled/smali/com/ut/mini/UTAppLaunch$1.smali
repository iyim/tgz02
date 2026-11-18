.class Lcom/ut/mini/UTAppLaunch$1;
.super Ljava/lang/Object;
.source "UTAppLaunch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ut/mini/UTAppLaunch;->sendFirstLaunch(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ut/mini/UTAppLaunch;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/ut/mini/UTAppLaunch;Landroid/content/Context;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/ut/mini/UTAppLaunch$1;->this$0:Lcom/ut/mini/UTAppLaunch;

    iput-object p2, p0, Lcom/ut/mini/UTAppLaunch$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 81
    iget-object v0, p0, Lcom/ut/mini/UTAppLaunch$1;->val$context:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 83
    invoke-static {}, Lcom/ut/mini/UTAppLaunch;->access$000()Z

    move-result v1

    const-string v2, "0"

    const-string v3, "_is_ft"

    if-eqz v1, :cond_0

    const-string v1, "1"

    .line 84
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 86
    :cond_0
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string v1, "_is_hl"

    .line 89
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v1, p0, Lcom/ut/mini/UTAppLaunch$1;->this$0:Lcom/ut/mini/UTAppLaunch;

    invoke-static {v1, v0}, Lcom/ut/mini/UTAppLaunch;->access$100(Lcom/ut/mini/UTAppLaunch;Ljava/util/Map;)V

    const/4 v0, 0x2

    .line 92
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "sendAppLaunch _is_ft"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Lcom/ut/mini/UTAppLaunch;->access$000()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "UTAppLaunch"

    invoke-static {v1, v0}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
