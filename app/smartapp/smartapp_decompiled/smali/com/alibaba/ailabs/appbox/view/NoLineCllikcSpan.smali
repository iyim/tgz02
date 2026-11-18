.class public Lcom/alibaba/ailabs/appbox/view/NoLineCllikcSpan;
.super Landroid/text/style/ClickableSpan;
.source "NoLineCllikcSpan.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 26
    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x0

    .line 28
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
