﻿<%@ Page Title="Properties" Language="C#" MasterPageFile="master.master" AutoEventWireup="true" EnableTheming="false" EnableViewState="false" ViewStateMode="Disabled" EnableSessionState="ReadOnly" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="/Scripts/sys/Common.js?v=1.3"></script>
    <script src="/Scripts/sys/DataService.min.js"></script>
    <script src="/Scripts/sys/DefaultGridVariables.js"></script>
    <script src="/content/sys/assets/js/jquery.validate.min.js"></script>
    <script src="/content/sys/assets/js/additional-methods.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="breadcrumbs ace-save-state" id="breadcrumbs">
        <ul class="breadcrumb">
            <li>
                <i class="ace-icon fa fa-home home-icon"></i>
                <a href="home">Home</a>
            </li>
            <li class="active">Properties</li>
        </ul>
    </div>
    <div class="page-content">
        <div class="page-header">
            <h1>Properties Manager</h1>
        </div>
        <div class="row">
            <div class="col-xs-12 widget-container-col">
                <div class="clearfix">
                    <a href="PropertyAddEdit" class="btn btn-white btn-warning btn-bold"
                        tabindex="0" title="Add new"><i class="fa fa-plus bigger-110"></i>
                        Add new</a>
                    <div class="pull-right tableTools-container"></div>
                </div>
                <div class="widget-box widget-color-blue" id="widget-box-2">
                    <div class="widget-header">
                        <h5 class="widget-title bigger lighter">
                            <i class="ace-icon fa fa-table"></i>
                            Properties List
                        </h5>
                        <div class="widget-toolbar">
                            <a href="#" data-action="fullscreen" class="white">
                                <i class="1 ace-icon fa fa-expand bigger-125"></i>
                            </a>
                        </div>
                    </div>
                    <div class="widget-body">
                        <div class="widget-main no-padding">
                            <table id="listItems" class="table table-striped table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Property Type</th>
                                        <th>Title</th>
                                        <th>Price</th>
                                        <th>Date</th>
                                        <th>Location</th>
                                        <th>Active</th>
                                        <th>Image</th>
                                        <th class="hidden-print" style="width: 120px">Options</th>
                                    </tr>
                                </thead>
                                <tbody></tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div id="deleteModal" class="modal fade" tabindex="-1">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header no-padding">
                                <div class="table-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                        <span class="white">&times;</span>
                                    </button>
                                    Delete item
                                </div>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-12">
                                        <form action="#" class="form-horizontal" id="removeForm">
                                            <label id="Label2">Are you sure to delete the selected item (<label class="removeField"></label>)?</label>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer no-margin-top">
                                <button class="btn btn-sm btn-primary btn-delete" id="btnDelete">
                                    <i class="ace-icon fa fa-check"></i>
                                    Delete
                                </button>
                                <button class="btn btn-sm btn-danger" data-dismiss="modal">
                                    <i class="ace-icon fa fa-times"></i>
                                    Cancel
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content runat="server" ID="ddd" ContentPlaceHolderID="ContentPlaceHolder2">
    <style>
        .select2-container {
            width: 83% !important;
        }
        img.media-object {
            max-width: 50px;
        }
    </style>
    <script src="/Scripts/sys/DefaultGridManager.js"></script>
    <script src="/Scripts/sys/numeral.min.js"></script>
    <script src="/Scripts/sys/admin/PropertiesManager.js?v=1.5"></script>
</asp:Content>
