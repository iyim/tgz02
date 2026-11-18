.class public final synthetic Lcom/alibaba/ailabs/genie/contacts/adapter/-$$Lambda$CallRecordItemAdapter$pDPBWQ_gHjtW4iAnn1tK6PihCm4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;

.field private final synthetic f$1:Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/-$$Lambda$CallRecordItemAdapter$pDPBWQ_gHjtW4iAnn1tK6PihCm4;->f$0:Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/-$$Lambda$CallRecordItemAdapter$pDPBWQ_gHjtW4iAnn1tK6PihCm4;->f$1:Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/-$$Lambda$CallRecordItemAdapter$pDPBWQ_gHjtW4iAnn1tK6PihCm4;->f$0:Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/adapter/-$$Lambda$CallRecordItemAdapter$pDPBWQ_gHjtW4iAnn1tK6PihCm4;->f$1:Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/ailabs/genie/contacts/adapter/CallRecordItemAdapter;->lambda$onBindRecordVH$63$CallRecordItemAdapter(Lcom/alibaba/ailabs/genie/contacts/item/CallRecordItem;Landroid/view/View;)V

    return-void
.end method
