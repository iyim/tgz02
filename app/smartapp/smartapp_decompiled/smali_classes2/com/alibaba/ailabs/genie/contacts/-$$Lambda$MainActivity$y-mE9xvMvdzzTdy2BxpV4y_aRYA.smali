.class public final synthetic Lcom/alibaba/ailabs/genie/contacts/-$$Lambda$MainActivity$y-mE9xvMvdzzTdy2BxpV4y_aRYA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/contacts/MainActivity;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/contacts/MainActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/-$$Lambda$MainActivity$y-mE9xvMvdzzTdy2BxpV4y_aRYA;->f$0:Lcom/alibaba/ailabs/genie/contacts/MainActivity;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/-$$Lambda$MainActivity$y-mE9xvMvdzzTdy2BxpV4y_aRYA;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/-$$Lambda$MainActivity$y-mE9xvMvdzzTdy2BxpV4y_aRYA;->f$0:Lcom/alibaba/ailabs/genie/contacts/MainActivity;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/-$$Lambda$MainActivity$y-mE9xvMvdzzTdy2BxpV4y_aRYA;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/MainActivity;->lambda$onPageSelected$70$MainActivity(Ljava/lang/String;)V

    return-void
.end method
