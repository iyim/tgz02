.class public final synthetic Lcom/alibaba/ailabs/genie/contacts/repository/callback/-$$Lambda$RtcCallback$ETlZhAZXhDKlxRdtTuV2KUA58os;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/contacts/repository/callback/RtcCallback;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/contacts/repository/callback/RtcCallback;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/repository/callback/-$$Lambda$RtcCallback$ETlZhAZXhDKlxRdtTuV2KUA58os;->f$0:Lcom/alibaba/ailabs/genie/contacts/repository/callback/RtcCallback;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/repository/callback/-$$Lambda$RtcCallback$ETlZhAZXhDKlxRdtTuV2KUA58os;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/repository/callback/-$$Lambda$RtcCallback$ETlZhAZXhDKlxRdtTuV2KUA58os;->f$0:Lcom/alibaba/ailabs/genie/contacts/repository/callback/RtcCallback;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/repository/callback/-$$Lambda$RtcCallback$ETlZhAZXhDKlxRdtTuV2KUA58os;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/repository/callback/RtcCallback;->lambda$onError$97$RtcCallback(Ljava/lang/String;)V

    return-void
.end method
