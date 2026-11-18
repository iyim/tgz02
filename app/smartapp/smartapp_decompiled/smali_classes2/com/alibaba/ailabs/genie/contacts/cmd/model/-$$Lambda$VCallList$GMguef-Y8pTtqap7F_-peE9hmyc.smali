.class public final synthetic Lcom/alibaba/ailabs/genie/contacts/cmd/model/-$$Lambda$VCallList$GMguef-Y8pTtqap7F_-peE9hmyc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallList;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/-$$Lambda$VCallList$GMguef-Y8pTtqap7F_-peE9hmyc;->f$0:Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/model/-$$Lambda$VCallList$GMguef-Y8pTtqap7F_-peE9hmyc;->f$0:Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallList;

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItemWrapper;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallList;->lambda$fromJson$12(Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallList;Lcom/alibaba/ailabs/genie/contacts/cmd/model/VCallItemWrapper;)V

    return-void
.end method
