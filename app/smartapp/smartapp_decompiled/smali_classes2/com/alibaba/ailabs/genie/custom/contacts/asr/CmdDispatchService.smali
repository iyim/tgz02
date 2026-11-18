.class public Lcom/alibaba/ailabs/genie/custom/contacts/asr/CmdDispatchService;
.super Landroid/app/Service;
.source "CmdDispatchService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 20
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/asr/CmdDispatchUtils;->resolveIntent(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 p1, 0x2

    return p1
.end method
