.class Lcom/alibaba/analytics/core/config/AudidConfigListener$1;
.super Ljava/lang/Object;
.source "AudidConfigListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/analytics/core/config/AudidConfigListener;->changeFile(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/analytics/core/config/AudidConfigListener;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$createFile:Z


# direct methods
.method constructor <init>(Lcom/alibaba/analytics/core/config/AudidConfigListener;Landroid/content/Context;Z)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/alibaba/analytics/core/config/AudidConfigListener$1;->this$0:Lcom/alibaba/analytics/core/config/AudidConfigListener;

    iput-object p2, p0, Lcom/alibaba/analytics/core/config/AudidConfigListener$1;->val$context:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/alibaba/analytics/core/config/AudidConfigListener$1;->val$createFile:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/alibaba/analytics/core/config/AudidConfigListener$1;->val$context:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v1, "3c9b584e65e6c983"

    .line 47
    invoke-virtual {v0, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    iget-boolean v1, p0, Lcom/alibaba/analytics/core/config/AudidConfigListener$1;->val$createFile:Z

    if-nez v1, :cond_2

    .line 50
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 53
    :cond_1
    iget-boolean v1, p0, Lcom/alibaba/analytics/core/config/AudidConfigListener$1;->val$createFile:Z

    if-eqz v1, :cond_2

    .line 54
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
