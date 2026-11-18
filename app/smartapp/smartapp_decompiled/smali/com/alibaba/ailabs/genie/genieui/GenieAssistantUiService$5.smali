.class Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService$5;
.super Ljava/lang/Object;
.source "GenieAssistantUiService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->startAccessService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService$5;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 138
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService$5;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;->access$300(Lcom/alibaba/ailabs/genie/genieui/GenieAssistantUiService;)V

    return-void
.end method
