.class public final synthetic Lcom/alibaba/ailabs/genie/contacts/adapter/-$$Lambda$CallRecordItemAdapter$rbyBbS9mbKvf79LMPu91INZBDCU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/-$$Lambda$CallRecordItemAdapter$rbyBbS9mbKvf79LMPu91INZBDCU;->f$0:Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;

    iput p2, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/-$$Lambda$CallRecordItemAdapter$rbyBbS9mbKvf79LMPu91INZBDCU;->f$1:I

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/-$$Lambda$CallRecordItemAdapter$rbyBbS9mbKvf79LMPu91INZBDCU;->f$0:Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;

    iget v1, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/-$$Lambda$CallRecordItemAdapter$rbyBbS9mbKvf79LMPu91INZBDCU;->f$1:I

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->lambda$onBindRecordVH$61$CallRecordItemAdapter(ILandroid/view/View;)Z

    move-result p1

    return p1
.end method
