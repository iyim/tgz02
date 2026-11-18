.class Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter$1;
.super Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;
.source "CallRecordItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 71
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->handleMessage(Landroid/os/Message;)V

    .line 72
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->mContext:Landroid/content/Context;

    const-string v0, "\u5220\u9664\u5931\u8d25"

    invoke-static {p1, v0, v1}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 74
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->mContext:Landroid/content/Context;

    const-string v0, "\u5220\u9664\u6210\u529f"

    invoke-static {p1, v0, v1}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 75
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method
