.class Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0$2;
.super Ljava/lang/Object;
.source "MessageActivityP0.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 93
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;->access$000(Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "message_card_open"

    const-string v1, "message"

    const-string v2, "a1z3lt.b25434202.c1608125735247.d1608125735247"

    invoke-static {v0, v1, v2, p1}, Lcom/alibaba/ailabs/genie/message/utils/CommonUtil;->eventUT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 94
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;->access$100(Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 95
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;->access$100(Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;->access$100(Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "https"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;->access$100(Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/alibaba/ailabs/genie/router/GenieAIRouter;->open(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_1

    .line 96
    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "genie://com.alibaba.ailabs.genie.launcher/webviewPage?h5_url="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;->access$100(Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 97
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;

    invoke-static {v1, p1, v0}, Lcom/alibaba/ailabs/genie/router/GenieAIRouter;->open(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 102
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;->finish()V

    return-void
.end method
