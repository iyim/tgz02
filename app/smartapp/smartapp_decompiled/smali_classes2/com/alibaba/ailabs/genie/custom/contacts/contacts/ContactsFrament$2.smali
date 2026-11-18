.class Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament$2;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "ContactsFrament.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->initComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament$2;->this$0:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament$2;->this$0:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->access$100(Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;)Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;->hasMore()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament$2;->this$0:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->access$100(Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;)Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    .line 123
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament$2;->this$0:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->access$200(Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;)Landroid/support/v7/widget/GridLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    return p1

    :cond_0
    return v1
.end method
