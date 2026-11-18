.class public Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog;
.super Landroid/app/Dialog;
.source "UserRightBindingDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog$Builder;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "TME-binding"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 42
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static checkHasRightRecord(Landroid/arch/core/util/Function;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/core/util/Function<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 282
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest;-><init>()V

    .line 283
    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/-$$Lambda$UserRightBindingDialog$V_KBxMVCCV7siX2zLnRvfwsvM6A;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/-$$Lambda$UserRightBindingDialog$V_KBxMVCCV7siX2zLnRvfwsvM6A;-><init>(Landroid/arch/core/util/Function;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest;->queryRightRecordReal(Lcom/alibaba/ailabs/genie/musicplayer/apis/InvokeForTurandotRequest$QueryRecordCallback;)V

    return-void
.end method

.method static synthetic lambda$checkHasRightRecord$89(Landroid/arch/core/util/Function;Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RealQueryRightRecordBean;)V
    .locals 9

    .line 285
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RealQueryRightRecordBean;->getModel()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RealQueryRightRecordBean$ModelWrap;

    move-result-object v0

    const-string v1, "TME-binding"

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RealQueryRightRecordBean;->getModel()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RealQueryRightRecordBean$ModelWrap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RealQueryRightRecordBean$ModelWrap;->getModel()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RealQueryRightRecordBean$ModelList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RealQueryRightRecordBean;->getModel()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RealQueryRightRecordBean$ModelWrap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RealQueryRightRecordBean$ModelWrap;->getModel()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RealQueryRightRecordBean$ModelList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RealQueryRightRecordBean$ModelList;->getResultList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 286
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 287
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss.sss\'Z\'"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RealQueryRightRecordBean;->getModel()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RealQueryRightRecordBean$ModelWrap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RealQueryRightRecordBean$ModelWrap;->getModel()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RealQueryRightRecordBean$ModelList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RealQueryRightRecordBean$ModelList;->getResultList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RealQueryRightRecordBean$ModelBean;

    .line 289
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ModelBean "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :try_start_0
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RealQueryRightRecordBean$ModelBean;->getStatus()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    .line 292
    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RealQueryRightRecordBean$ModelBean;->getDeadline()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :catch_0
    move-exception v3

    .line 297
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ParseException s: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 301
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " hasRight: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/arch/core/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public show()V
    .locals 3

    .line 272
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 273
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "origin width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TME-binding"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x443d0000    # 756.0f

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, 0x0

    .line 276
    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog;->setCanceledOnTouchOutside(Z)V

    .line 277
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 278
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/UserRightBindingDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
