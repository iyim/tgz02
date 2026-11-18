.class final Lcom/uc/webview/export/internal/setup/bt;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Landroid/webkit/ValueCallback;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x0

    .line 92
    sput-boolean p1, Lcom/uc/webview/export/internal/SDKFactory;->j:Z

    .line 93
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->g()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
