.class public Lcom/alibaba/ailabs/genie/custom/contacts/app/CustomLogger;
.super Ljava/lang/Object;
.source "CustomLogger.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/utils/log/ILogger;


# instance fields
.field private isDebug:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/app/CustomLogger;->isDebug:Z

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/app/CustomLogger;->isDebug:Z

    if-eqz v0, :cond_0

    .line 22
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 43
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/app/CustomLogger;->isDebug:Z

    if-eqz v0, :cond_0

    .line 28
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/app/CustomLogger;->isDebug:Z

    if-eqz v0, :cond_0

    .line 16
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/custom/contacts/app/CustomLogger;->isDebug:Z

    if-eqz v0, :cond_0

    .line 34
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
