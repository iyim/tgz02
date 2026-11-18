.class Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment$1;
.super Lcom/alibaba/ailabs/genie/contacts/view/PaginationScrollListener;
.source "CallRecordFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->initComponent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;

    invoke-direct {p0, p2}, Lcom/alibaba/ailabs/genie/contacts/view/PaginationScrollListener;-><init>(Ljava/lang/ref/WeakReference;)V

    return-void
.end method


# virtual methods
.method protected loadMoreItems()V
    .locals 2

    const-string v0, "contacts_CallRecordFragment"

    const-string v1, "load more records1..."

    .line 114
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->fetchRecordsMore()V

    return-void
.end method
