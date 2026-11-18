.class Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament$3;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
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

    .line 129
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament$3;->this$0:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 1

    .line 132
    iget-object p4, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament$3;->this$0:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;

    invoke-static {p4}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->access$100(Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;)Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;

    move-result-object p4

    iget-object p4, p4, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/adapter/ContactsItemAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    const/4 v0, 0x4

    if-gt p4, v0, :cond_0

    .line 134
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament$3;->this$0:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/alibaba/ailabs/genie/custom/contacts/R$dimen;->custom_item_single_line_top:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 136
    :cond_0
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 137
    div-int/2addr p2, v0

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament$3;->this$0:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/alibaba/ailabs/genie/custom/contacts/R$dimen;->custom_recyclerview_margin_top:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament$3;->this$0:Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;

    .line 138
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/ContactsFrament;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/alibaba/ailabs/genie/custom/contacts/R$dimen;->custom_item_margin_top:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    :goto_0
    iput p2, p1, Landroid/graphics/Rect;->top:I

    :goto_1
    return-void
.end method
