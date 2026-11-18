.class final Lcom/alibaba/ailabs/childmode/mtop/NetApi$1;
.super Ljava/lang/Object;
.source "NetApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/childmode/mtop/NetApi;->updateToServer(Landroid/content/Context;Ljava/lang/String;ZIILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$forbiddenTimeEnd:Ljava/lang/String;

.field final synthetic val$forbiddenTimeStart:Ljava/lang/String;

.field final synthetic val$isChildMode:Z

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$playTimePerEveryday:I

.field final synthetic val$playTimePerOnceTime:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;ZIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/mtop/NetApi$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/alibaba/ailabs/childmode/mtop/NetApi$1;->val$password:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/alibaba/ailabs/childmode/mtop/NetApi$1;->val$isChildMode:Z

    iput p4, p0, Lcom/alibaba/ailabs/childmode/mtop/NetApi$1;->val$playTimePerOnceTime:I

    iput p5, p0, Lcom/alibaba/ailabs/childmode/mtop/NetApi$1;->val$playTimePerEveryday:I

    iput-object p6, p0, Lcom/alibaba/ailabs/childmode/mtop/NetApi$1;->val$forbiddenTimeStart:Ljava/lang/String;

    iput-object p7, p0, Lcom/alibaba/ailabs/childmode/mtop/NetApi$1;->val$forbiddenTimeEnd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "NetApi"

    const-string v1, "update to Server through device deviceMirror"

    .line 91
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/mtop/NetApi$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->getChildModeSettingBean(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/alibaba/ailabs/childmode/mtop/NetApi$1;->val$password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->setPassword(Ljava/lang/String;)V

    .line 94
    iget-boolean v1, p0, Lcom/alibaba/ailabs/childmode/mtop/NetApi$1;->val$isChildMode:Z

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->setEnable(Z)V

    .line 95
    iget v1, p0, Lcom/alibaba/ailabs/childmode/mtop/NetApi$1;->val$playTimePerOnceTime:I

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->setSingleAvailableTime(I)V

    .line 96
    iget v1, p0, Lcom/alibaba/ailabs/childmode/mtop/NetApi$1;->val$playTimePerEveryday:I

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->setDailyAvailableTime(I)V

    .line 97
    iget-object v1, p0, Lcom/alibaba/ailabs/childmode/mtop/NetApi$1;->val$forbiddenTimeStart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->setAntiAddictionStart(Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/alibaba/ailabs/childmode/mtop/NetApi$1;->val$forbiddenTimeEnd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->setAntiAddictionEnd(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/alibaba/ailabs/childmode/mtop/NetApi$1;->val$context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->setChildModeSettingBean(Landroid/content/Context;Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;)V

    return-void
.end method
