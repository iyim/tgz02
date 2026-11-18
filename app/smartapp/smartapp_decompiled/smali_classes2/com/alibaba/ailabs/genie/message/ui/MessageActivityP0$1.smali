.class Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0$1;
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

    .line 82
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0$1;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string p1, "message_card_close"

    const-string v0, "message"

    const-string v1, "a1z3lt.b25434202.c1608192578099.d1608192578100"

    const/4 v2, 0x0

    .line 85
    invoke-static {p1, v0, v1, v2}, Lcom/alibaba/ailabs/genie/message/utils/CommonUtil;->eventUT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 86
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0$1;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/message/ui/MessageActivityP0;->finish()V

    return-void
.end method
