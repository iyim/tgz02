.class Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/push/RecordReceiverHelper$IMessageReceiveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity$2;->this$0:Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;)V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity$2;->this$0:Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;->access$100(Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;)Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomActivityMainBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/custom/contacts/databinding/CustomActivityMainBinding;->contentVp:Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewPager;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity$2;->this$0:Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;->access$200(Lcom/alibaba/ailabs/genie/custom/contacts/main/MainActivity;)Lcom/alibaba/ailabs/genie/custom/contacts/main/MainFragmentPagerAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/custom/contacts/main/MainFragmentPagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 221
    check-cast v0, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/CallRecordsFragment;->addNewRecord(Lcom/alibaba/ailabs/genie/custom/contacts/callrecords/model/CallRecords;)V

    :cond_0
    return-void
.end method
