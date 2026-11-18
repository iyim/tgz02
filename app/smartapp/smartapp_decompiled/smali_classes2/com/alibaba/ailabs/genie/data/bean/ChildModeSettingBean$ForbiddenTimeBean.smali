.class public Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;
.super Ljava/lang/Object;
.source "ChildModeSettingBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForbiddenTimeBean"
.end annotation


# instance fields
.field private endHour:I

.field private endMin:I

.field private name:Ljava/lang/String;

.field private position:I

.field private startHour:I

.field private startMin:I

.field private value:Z

.field private week:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 310
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 313
    :cond_1
    check-cast p1, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;

    .line 314
    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->value:Z

    iget-boolean v3, p1, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->value:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->startHour:I

    iget v3, p1, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->startHour:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->startMin:I

    iget v3, p1, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->startMin:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->endHour:I

    iget v3, p1, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->endHour:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->endMin:I

    iget v3, p1, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->endMin:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->name:Ljava/lang/String;

    .line 319
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->week:Ljava/util/List;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->week:Ljava/util/List;

    .line 320
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getEndHour()I
    .locals 1

    .line 270
    iget v0, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->endHour:I

    return v0
.end method

.method public getEndMin()I
    .locals 1

    .line 274
    iget v0, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->endMin:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 251
    iget v0, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->position:I

    return v0
.end method

.method public getStartHour()I
    .locals 1

    .line 262
    iget v0, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->startHour:I

    return v0
.end method

.method public getStartMin()I
    .locals 1

    .line 266
    iget v0, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->startMin:I

    return v0
.end method

.method public getWeek()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->week:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    .line 325
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->name:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->value:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->startHour:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->startMin:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->endHour:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->endMin:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->week:Ljava/util/List;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public init(Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;)V
    .locals 1

    .line 296
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->name:Ljava/lang/String;

    .line 297
    iget-boolean v0, p1, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->value:Z

    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->value:Z

    .line 298
    iget v0, p1, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->startHour:I

    iput v0, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->startHour:I

    .line 299
    iget v0, p1, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->startMin:I

    iput v0, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->startMin:I

    .line 300
    iget v0, p1, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->endHour:I

    iput v0, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->endHour:I

    .line 301
    iget v0, p1, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->endMin:I

    iput v0, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->endMin:I

    .line 302
    iget-object p1, p1, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->week:Ljava/util/List;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->week:Ljava/util/List;

    return-void
.end method

.method public init(Ljava/lang/String;IIIILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 329
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->name:Ljava/lang/String;

    .line 330
    iput p2, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->startHour:I

    .line 331
    iput p3, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->startMin:I

    .line 332
    iput p4, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->endHour:I

    .line 333
    iput p5, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->endMin:I

    .line 334
    iput-object p6, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->week:Ljava/util/List;

    return-void
.end method

.method public isValue()Z
    .locals 1

    .line 258
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->value:Z

    return v0
.end method

.method public setEndHour(I)V
    .locals 0

    .line 272
    iput p1, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->endHour:I

    return-void
.end method

.method public setEndMin(I)V
    .locals 0

    .line 276
    iput p1, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->endMin:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 247
    iput p1, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->position:I

    return-void
.end method

.method public setStartHour(I)V
    .locals 0

    .line 264
    iput p1, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->startHour:I

    return-void
.end method

.method public setStartMin(I)V
    .locals 0

    .line 268
    iput p1, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->startMin:I

    return-void
.end method

.method public setValue(Z)V
    .locals 0

    .line 260
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->value:Z

    return-void
.end method

.method public setWeek(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 280
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->week:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ForbiddenTimeBean{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->value:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", startHour="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->startHour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", startMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->startMin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endHour="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->endHour:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", endMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->endMin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", week="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;->week:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
