.class public Landroid/databinding/DataBinderMapperImpl;
.super Landroid/databinding/MergedDataBinderMapper;
.source "DataBinderMapperImpl.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/databinding/MergedDataBinderMapper;-><init>()V

    .line 5
    new-instance v0, Lcom/alibaba/ailabs/genie/smartapp/DataBinderMapperImpl;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/smartapp/DataBinderMapperImpl;-><init>()V

    invoke-virtual {p0, v0}, Landroid/databinding/DataBinderMapperImpl;->addMapper(Landroid/databinding/DataBinderMapper;)V

    .line 6
    new-instance v0, Landroid/databinding/V1CompatDataBinderMapperImpl;

    invoke-direct {v0}, Landroid/databinding/V1CompatDataBinderMapperImpl;-><init>()V

    invoke-virtual {p0, v0}, Landroid/databinding/DataBinderMapperImpl;->addMapper(Landroid/databinding/DataBinderMapper;)V

    return-void
.end method
