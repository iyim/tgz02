.class public final synthetic Lcom/alibaba/ailabs/genie/contacts/cmd/transform/-$$Lambda$VoipToPstnActivity$3y3JD9EaKsqm5tlsVm-O3ypMh_4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/-$$Lambda$VoipToPstnActivity$3y3JD9EaKsqm5tlsVm-O3ypMh_4;->f$0:Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/-$$Lambda$VoipToPstnActivity$3y3JD9EaKsqm5tlsVm-O3ypMh_4;->f$0:Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/model/SystemInform;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/transform/VoipToPstnActivity;->lambda$new$10$VoipToPstnActivity(Lcom/alibaba/ailabs/genie/contacts/model/SystemInform;)V

    return-void
.end method
