.class public final synthetic Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/-$$Lambda$VContactListAdapter$OQYnIKIhCphQ8nk-xvhyyS-v1QE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/VContactListAdapter;

.field private final synthetic f$1:Lcom/alibaba/ailabs/genie/contacts/cmd/model/VContactItem;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/VContactListAdapter;Lcom/alibaba/ailabs/genie/contacts/cmd/model/VContactItem;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/-$$Lambda$VContactListAdapter$OQYnIKIhCphQ8nk-xvhyyS-v1QE;->f$0:Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/VContactListAdapter;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/-$$Lambda$VContactListAdapter$OQYnIKIhCphQ8nk-xvhyyS-v1QE;->f$1:Lcom/alibaba/ailabs/genie/contacts/cmd/model/VContactItem;

    iput p3, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/-$$Lambda$VContactListAdapter$OQYnIKIhCphQ8nk-xvhyyS-v1QE;->f$2:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/-$$Lambda$VContactListAdapter$OQYnIKIhCphQ8nk-xvhyyS-v1QE;->f$0:Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/VContactListAdapter;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/-$$Lambda$VContactListAdapter$OQYnIKIhCphQ8nk-xvhyyS-v1QE;->f$1:Lcom/alibaba/ailabs/genie/contacts/cmd/model/VContactItem;

    iget v2, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/-$$Lambda$VContactListAdapter$OQYnIKIhCphQ8nk-xvhyyS-v1QE;->f$2:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/contacts/VContactListAdapter;->lambda$onBindVH$6$VContactListAdapter(Lcom/alibaba/ailabs/genie/contacts/cmd/model/VContactItem;ILandroid/view/View;)V

    return-void
.end method
