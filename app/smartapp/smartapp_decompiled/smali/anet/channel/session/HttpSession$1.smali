.class Lanet/channel/session/HttpSession$1;
.super Ljava/lang/Object;
.source "HttpSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanet/channel/session/HttpSession;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lanet/channel/session/HttpSession;

.field final synthetic val$request:Lanet/channel/request/Request;


# direct methods
.method constructor <init>(Lanet/channel/session/HttpSession;Lanet/channel/request/Request;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lanet/channel/session/HttpSession$1;->this$0:Lanet/channel/session/HttpSession;

    iput-object p2, p0, Lanet/channel/session/HttpSession$1;->val$request:Lanet/channel/request/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 88
    iget-object v0, p0, Lanet/channel/session/HttpSession$1;->val$request:Lanet/channel/request/Request;

    invoke-static {v0}, Lanet/channel/session/HttpConnector;->connect(Lanet/channel/request/Request;)Lanet/channel/session/HttpConnector$Response;

    move-result-object v0

    .line 89
    iget v1, v0, Lanet/channel/session/HttpConnector$Response;->httpCode:I

    if-lez v1, :cond_0

    .line 90
    iget-object v0, p0, Lanet/channel/session/HttpSession$1;->this$0:Lanet/channel/session/HttpSession;

    const/4 v1, 0x4

    new-instance v2, Lanet/channel/entity/Event;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lanet/channel/entity/Event;-><init>(I)V

    invoke-static {v0, v1, v2}, Lanet/channel/session/HttpSession;->access$000(Lanet/channel/session/HttpSession;ILanet/channel/entity/Event;)V

    goto :goto_0

    .line 92
    :cond_0
    iget-object v1, p0, Lanet/channel/session/HttpSession$1;->this$0:Lanet/channel/session/HttpSession;

    new-instance v2, Lanet/channel/entity/Event;

    iget v0, v0, Lanet/channel/session/HttpConnector$Response;->httpCode:I

    const/16 v3, 0x100

    const-string v4, "Http connect fail"

    invoke-direct {v2, v3, v0, v4}, Lanet/channel/entity/Event;-><init>(IILjava/lang/String;)V

    invoke-static {v1, v3, v2}, Lanet/channel/session/HttpSession;->access$100(Lanet/channel/session/HttpSession;ILanet/channel/entity/Event;)V

    :goto_0
    return-void
.end method
