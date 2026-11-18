.class Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment$1;
.super Lcom/alibaba/ailabs/genie/custom/contacts/common/view/PaginationScrollListener;
.source "CallRecordsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->initComponent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment$1;->this$0:Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;

    invoke-direct {p0, p2}, Lcom/alibaba/ailabs/genie/custom/contacts/common/view/PaginationScrollListener;-><init>(Ljava/lang/ref/WeakReference;)V

    return-void
.end method


# virtual methods
.method protected loadMoreItems()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment$1;->this$0:Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->access$000(Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "contacts_records"

    const-string v1, "load more records..."

    .line 105
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment$1;->this$0:Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->fetchRecordsMore()V

    :cond_0
    return-void
.end method
