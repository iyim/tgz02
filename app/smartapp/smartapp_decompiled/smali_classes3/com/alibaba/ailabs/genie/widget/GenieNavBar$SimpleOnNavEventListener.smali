.class public Lcom/alibaba/ailabs/genie/widget/GenieNavBar$SimpleOnNavEventListener;
.super Ljava/lang/Object;
.source "GenieNavBar.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/widget/GenieNavBar$OnNavEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/widget/GenieNavBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleOnNavEventListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onBack()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onHome()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
