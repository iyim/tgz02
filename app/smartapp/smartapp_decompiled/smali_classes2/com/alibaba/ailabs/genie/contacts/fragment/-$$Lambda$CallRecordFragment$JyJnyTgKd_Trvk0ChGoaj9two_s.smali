.class public final synthetic Lcom/alibaba/ailabs/genie/contacts/fragment/-$$Lambda$CallRecordFragment$JyJnyTgKd_Trvk0ChGoaj9two_s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/-$$Lambda$CallRecordFragment$JyJnyTgKd_Trvk0ChGoaj9two_s;->f$0:Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/-$$Lambda$CallRecordFragment$JyJnyTgKd_Trvk0ChGoaj9two_s;->f$0:Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/contacts/fragment/CallRecordFragment;->lambda$subscribeRecords$59$CallRecordFragment(Lcom/alibaba/ailabs/genie/contacts/item/CallRecordData;)V

    return-void
.end method
