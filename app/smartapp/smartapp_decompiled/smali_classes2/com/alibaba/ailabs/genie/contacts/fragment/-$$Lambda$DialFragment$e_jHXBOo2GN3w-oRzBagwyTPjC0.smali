.class public final synthetic Lcom/alibaba/ailabs/genie/contacts/fragment/-$$Lambda$DialFragment$e_jHXBOo2GN3w-oRzBagwyTPjC0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/-$$Lambda$DialFragment$e_jHXBOo2GN3w-oRzBagwyTPjC0;->f$0:Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/fragment/-$$Lambda$DialFragment$e_jHXBOo2GN3w-oRzBagwyTPjC0;->f$0:Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/contacts/fragment/DialFragment;->lambda$subscribePstnMinutes$64$DialFragment(Ljava/lang/String;)V

    return-void
.end method
