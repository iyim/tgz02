.class Lcom/alibaba/ailabs/childmode/CacheManager$1;
.super Landroid/content/BroadcastReceiver;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/childmode/CacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/childmode/CacheManager;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/childmode/CacheManager;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/CacheManager$1;->this$0:Lcom/alibaba/ailabs/childmode/CacheManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 144
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.youkuchild.android.turando"

    .line 145
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 146
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/CacheManager$1;->this$0:Lcom/alibaba/ailabs/childmode/CacheManager;

    const-string v1, "isAudio"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/childmode/CacheManager;->access$002(Lcom/alibaba/ailabs/childmode/CacheManager;Z)Z

    const-string p1, "CacheManager"

    .line 147
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "action = com.youkuchild.android.turando, isListening = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/CacheManager$1;->this$0:Lcom/alibaba/ailabs/childmode/CacheManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/childmode/CacheManager;->access$000(Lcom/alibaba/ailabs/childmode/CacheManager;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/CacheManager$1;->this$0:Lcom/alibaba/ailabs/childmode/CacheManager;

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/childmode/CacheManager;->access$100(Lcom/alibaba/ailabs/childmode/CacheManager;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 152
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
