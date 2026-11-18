.class public final synthetic Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/-$$Lambda$VCallListAdapter$62FM46Xl9sZu1cddEZbjeG2AESw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListAdapter;

.field private final synthetic f$1:Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItem;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListAdapter;Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItem;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/-$$Lambda$VCallListAdapter$62FM46Xl9sZu1cddEZbjeG2AESw;->f$0:Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListAdapter;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/-$$Lambda$VCallListAdapter$62FM46Xl9sZu1cddEZbjeG2AESw;->f$1:Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItem;

    iput p3, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/-$$Lambda$VCallListAdapter$62FM46Xl9sZu1cddEZbjeG2AESw;->f$2:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/-$$Lambda$VCallListAdapter$62FM46Xl9sZu1cddEZbjeG2AESw;->f$0:Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListAdapter;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/-$$Lambda$VCallListAdapter$62FM46Xl9sZu1cddEZbjeG2AESw;->f$1:Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItem;

    iget v2, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/-$$Lambda$VCallListAdapter$62FM46Xl9sZu1cddEZbjeG2AESw;->f$2:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/selectlist/call/VCallListAdapter;->lambda$onBindVH$2$VCallListAdapter(Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItem;ILandroid/view/View;)V

    return-void
.end method
