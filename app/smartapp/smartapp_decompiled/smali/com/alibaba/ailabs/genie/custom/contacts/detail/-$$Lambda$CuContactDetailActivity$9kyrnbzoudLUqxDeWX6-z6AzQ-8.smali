.class public final synthetic Lcom/alibaba/ailabs/genie/custom/contacts/detail/-$$Lambda$CuContactDetailActivity$9kyrnbzoudLUqxDeWX6-z6AzQ-8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/-$$Lambda$CuContactDetailActivity$9kyrnbzoudLUqxDeWX6-z6AzQ-8;->f$0:Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/detail/-$$Lambda$CuContactDetailActivity$9kyrnbzoudLUqxDeWX6-z6AzQ-8;->f$0:Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;

    check-cast p1, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactsDetailWrapper;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/detail/CuContactDetailActivity;->lambda$initData$13$CuContactDetailActivity(Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/ContactsDetailWrapper;)V

    return-void
.end method
