.class public final synthetic Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/-$$Lambda$VCallList$wcwJABs4iO-Prvx2qaNflB-MsA8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallList;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/-$$Lambda$VCallList$wcwJABs4iO-Prvx2qaNflB-MsA8;->f$0:Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/-$$Lambda$VCallList$wcwJABs4iO-Prvx2qaNflB-MsA8;->f$0:Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallList;

    check-cast p1, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItemWrapper;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallList;->lambda$fromJson$25(Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallList;Lcom/alibaba/ailabs/genie/custom/contacts/asr/model/VCallItemWrapper;)V

    return-void
.end method
