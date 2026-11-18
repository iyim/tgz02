.class Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager$2;
.super Ljava/util/HashMap;
.source "JumpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->playLongTTS(Landroid/content/Context;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;)V
    .locals 4

    .line 190
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager$2;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 191
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager$2;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;->access$000(Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "duration"

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/globalsearch/utils/JumpManager$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
